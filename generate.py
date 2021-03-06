#!/usr/bin/env python

import pystache
import os
import re
import json
import codecs
import HTMLParser
import datetime

API_DIR = "apis"
OUT_DIR = "aws-sdk"


def parse_operations(iterator_fn):
    operations = []
    for op_name, operation in iterator_fn():
        if operation.get("deprecated") is not True:
            doc = operation.get("documentation", " ")
            operation.update({"documentation": doc})
            inp = operation.get("input")
            if inp:
                operation.update({"input_shape_or_empty": inp})
            else:
                operation.update({"input_shape_or_empty": {"shape": "{}"}})
            operations.append(operation)
    return operations


def parse_shapes(iterator_fn):
    shapes = {
        "string": [],
        "structure": [],
        "list": [],
        "double": [],
        "integer": [],
        "long": [],
        "boolean": [],
        "map": [],
        "blob": [],
        "timestamp": [],
        "float": []}

    for shape_name, shape in iterator_fn():
        shape_type = str(shape["type"])
        shape["name"] = shape_name
        # ensure empty documentation if none exists (otherwise mustache will start searching recursively)
        shape.update({"documentation": shape.get("documentation", " ").replace("\n", "\n--")})
        # remove patterns
        if shape.get("pattern"):
            shape.pop("pattern", None)

        if shape_type == "structure":
            members = []
            query_string_members = []
            uri_members = []
            header_members = []
            for member_name, member in shape["members"].iteritems():
                member["name"] = member_name
                member["locationName"] = member.get("locationName", member_name)
                member["documentation"] = member.get("documentation", "").replace("\n", "\n--")
                if member.get("location") == "querystring":
                    query_string_members.append(member)
                elif member.get("location") == "uri":
                    uri_members.append(member)
                elif member.get("location") == "header":
                    header_members.append(member)
                members.append(member)
            shape["member_names"] = ",".join(shape["members"].keys())
            shape["members"] = members
            shape["query_string_members"] = query_string_members
            shape["uri_members"] = uri_members
            shape["header_members"] = header_members
            if shape.get("required"):
                required = []
                for required_name in shape["required"]:
                    required.append({"name": required_name})
                shape.update({"required": required})
        shapes[shape_type].append(shape)
    return shapes


def generate():
    with open("operations.mtl", 'r') as f:
        op_mtl = f.read()

    # build a list of apis to parse
    # favor a newer version (date) over an old one
    apis = {}
    for filename in os.listdir(API_DIR):
        if filename.endswith(".normal.json"):
            matches = re.match("(.*)-(\d\d\d\d)-(\d\d)-(\d\d).normal.json", filename)
            api = matches.group(1)
            date = datetime.date(int(matches.group(2)), int(matches.group(3)), int(matches.group(4)))

            existing_version = apis.get(api)
            if not existing_version or existing_version.get("date") < date:
                apis[api] = {
                    "date": date,
                    "filename": filename
                }

    # parse the list of apis and generate lua files
    for api, data in apis.items():
        filename = data.get("filename")
        print("Parsing " + filename)
        j = json.load(open(os.path.join(API_DIR, filename)))

        j["operations"] = parse_operations(j["operations"].iteritems)
        j["shapes"] = parse_shapes(j["shapes"].iteritems)

        uid = j["metadata"].get("uid")
        if uid:
            uid = re.match("(.*)-(\d\d\d\d)-(\d\d)-(\d\d)", uid).group(1)
        serviceId = j["metadata"].get("serviceId")

        out_filename = (uid or serviceId).replace(" ", "").replace("-", "").lower() + ".lua"
        # out_filename = j["metadata"]["endpointPrefix"].replace(".", "_") + ".lua"
        print("Writing " + out_filename)

        lua = pystache.render(op_mtl, j)
        with codecs.open(os.path.join(OUT_DIR, out_filename), 'wb', "utf-8") as f:
            f.write(HTMLParser.HTMLParser().unescape(lua))


if __name__ == "__main__":
    generate()
