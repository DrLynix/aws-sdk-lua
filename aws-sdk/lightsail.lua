--- GENERATED CODE - DO NOT MODIFY
-- Amazon Lightsail (lightsail-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "lightsail",
	service_abbreviation = "",
	service_full_name = "Amazon Lightsail",
	signature_version = "v4",
	target_prefix = "Lightsail_20161128",
	timestamp_format = "",
	global_endpoint = "",
	uid = "lightsail-2016-11-28",
}

local GetInstanceAccessDetailsResult_keys = { "accessDetails" = true, nil }

function M.AssertGetInstanceAccessDetailsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessDetailsResult to be of type 'table'")
	if struct["accessDetails"] then M.AssertInstanceAccessDetails(struct["accessDetails"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceAccessDetailsResult_keys[k], "GetInstanceAccessDetailsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessDetailsResult
--  
-- @param accessDetails [InstanceAccessDetails] <p>An array of key-value pairs containing information about a get instance access request.</p>
function M.GetInstanceAccessDetailsResult(accessDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessDetailsResult")
	local t = { 
		["accessDetails"] = accessDetails,
	}
	M.AssertGetInstanceAccessDetailsResult(t)
	return t
end

local MonthlyTransfer_keys = { "gbPerMonthAllocated" = true, nil }

function M.AssertMonthlyTransfer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MonthlyTransfer to be of type 'table'")
	if struct["gbPerMonthAllocated"] then M.Assertinteger(struct["gbPerMonthAllocated"]) end
	for k,_ in pairs(struct) do
		assert(MonthlyTransfer_keys[k], "MonthlyTransfer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MonthlyTransfer
-- <p>Describes the monthly data transfer in and out of your virtual private server (or <i>instance</i>).</p>
-- @param gbPerMonthAllocated [integer] <p>The amount allocated per month (in GB).</p>
function M.MonthlyTransfer(gbPerMonthAllocated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MonthlyTransfer")
	local t = { 
		["gbPerMonthAllocated"] = gbPerMonthAllocated,
	}
	M.AssertMonthlyTransfer(t)
	return t
end

local StopInstanceRequest_keys = { "instanceName" = true, nil }

function M.AssertStopInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(StopInstanceRequest_keys[k], "StopInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance (a virtual private server) to stop.</p>
-- Required parameter: instanceName
function M.StopInstanceRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopInstanceRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertStopInstanceRequest(t)
	return t
end

local InstanceState_keys = { "code" = true, "name" = true, nil }

function M.AssertInstanceState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceState to be of type 'table'")
	if struct["code"] then M.Assertinteger(struct["code"]) end
	if struct["name"] then M.Assertstring(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(InstanceState_keys[k], "InstanceState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceState
-- <p>Describes the virtual private server (or <i>instance</i>) status.</p>
-- @param code [integer] <p>The status code for the instance.</p>
-- @param name [string] <p>The state of the instance (e.g., <code>running</code> or <code>pending</code>).</p>
function M.InstanceState(code, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceState")
	local t = { 
		["code"] = code,
		["name"] = name,
	}
	M.AssertInstanceState(t)
	return t
end

local PeerVpcResult_keys = { "operation" = true, nil }

function M.AssertPeerVpcResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PeerVpcResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(PeerVpcResult_keys[k], "PeerVpcResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PeerVpcResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.PeerVpcResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PeerVpcResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertPeerVpcResult(t)
	return t
end

local UnauthenticatedException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertUnauthenticatedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthenticatedException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(UnauthenticatedException_keys[k], "UnauthenticatedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthenticatedException
-- <p>Lightsail throws this exception when the user has not been authenticated.</p>
-- @param docs [string] <p>Lightsail throws this exception when the user has not been authenticated.</p>
-- @param message [string] <p>Lightsail throws this exception when the user has not been authenticated.</p>
-- @param code [string] <p>Lightsail throws this exception when the user has not been authenticated.</p>
-- @param tip [string] <p>Lightsail throws this exception when the user has not been authenticated.</p>
function M.UnauthenticatedException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthenticatedException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertUnauthenticatedException(t)
	return t
end

local GetKeyPairResult_keys = { "keyPair" = true, nil }

function M.AssertGetKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairResult to be of type 'table'")
	if struct["keyPair"] then M.AssertKeyPair(struct["keyPair"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyPairResult_keys[k], "GetKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairResult
--  
-- @param keyPair [KeyPair] <p>An array of key-value pairs containing information about the key pair.</p>
function M.GetKeyPairResult(keyPair, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairResult")
	local t = { 
		["keyPair"] = keyPair,
	}
	M.AssertGetKeyPairResult(t)
	return t
end

local CreateInstancesRequest_keys = { "userData" = true, "availabilityZone" = true, "customImageName" = true, "instanceNames" = true, "blueprintId" = true, "keyPairName" = true, "bundleId" = true, nil }

function M.AssertCreateInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesRequest to be of type 'table'")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	assert(struct["availabilityZone"], "Expected key availabilityZone to exist in table")
	assert(struct["blueprintId"], "Expected key blueprintId to exist in table")
	assert(struct["bundleId"], "Expected key bundleId to exist in table")
	if struct["userData"] then M.Assertstring(struct["userData"]) end
	if struct["availabilityZone"] then M.Assertstring(struct["availabilityZone"]) end
	if struct["customImageName"] then M.AssertResourceName(struct["customImageName"]) end
	if struct["instanceNames"] then M.AssertStringList(struct["instanceNames"]) end
	if struct["blueprintId"] then M.AssertNonEmptyString(struct["blueprintId"]) end
	if struct["keyPairName"] then M.AssertResourceName(struct["keyPairName"]) end
	if struct["bundleId"] then M.AssertNonEmptyString(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstancesRequest_keys[k], "CreateInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesRequest
--  
-- @param userData [string] <p>A launch script you can create that configures a server with additional user data. For example, you might want to run <code>apt-get –y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps">Dev Guide</a>.</p> </note>
-- @param availabilityZone [string] <p>The Availability Zone in which to create your instance. Use the following format: <code>us-east-1a</code> (case sensitive). You can get a list of availability zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include availability zones</code> parameter to your request.</p>
-- @param customImageName [ResourceName] <p>(Deprecated) The name for your custom image.</p> <note> <p>In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated.</p> </note>
-- @param instanceNames [StringList] <p>The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: <code>["MyFirstInstance","MySecondInstance"]</code> </p>
-- @param blueprintId [NonEmptyString] <p>The ID for a virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>). Use the get blueprints operation to return a list of available images (or <i>blueprints</i>).</p>
-- @param keyPairName [ResourceName] <p>The name of your key pair.</p>
-- @param bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
-- Required parameter: instanceNames
-- Required parameter: availabilityZone
-- Required parameter: blueprintId
-- Required parameter: bundleId
function M.CreateInstancesRequest(userData, availabilityZone, customImageName, instanceNames, blueprintId, keyPairName, bundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesRequest")
	local t = { 
		["userData"] = userData,
		["availabilityZone"] = availabilityZone,
		["customImageName"] = customImageName,
		["instanceNames"] = instanceNames,
		["blueprintId"] = blueprintId,
		["keyPairName"] = keyPairName,
		["bundleId"] = bundleId,
	}
	M.AssertCreateInstancesRequest(t)
	return t
end

local DetachStaticIpRequest_keys = { "staticIpName" = true, nil }

function M.AssertDetachStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then M.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(DetachStaticIpRequest_keys[k], "DetachStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachStaticIpRequest
--  
-- @param staticIpName [ResourceName] <p>The name of the static IP to detach from the instance.</p>
-- Required parameter: staticIpName
function M.DetachStaticIpRequest(staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachStaticIpRequest")
	local t = { 
		["staticIpName"] = staticIpName,
	}
	M.AssertDetachStaticIpRequest(t)
	return t
end

local StartInstanceRequest_keys = { "instanceName" = true, nil }

function M.AssertStartInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(StartInstanceRequest_keys[k], "StartInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartInstanceRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance (a virtual private server) to start.</p>
-- Required parameter: instanceName
function M.StartInstanceRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartInstanceRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertStartInstanceRequest(t)
	return t
end

local GetInstancePortStatesResult_keys = { "portStates" = true, nil }

function M.AssertGetInstancePortStatesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancePortStatesResult to be of type 'table'")
	if struct["portStates"] then M.AssertInstancePortStateList(struct["portStates"]) end
	for k,_ in pairs(struct) do
		assert(GetInstancePortStatesResult_keys[k], "GetInstancePortStatesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancePortStatesResult
--  
-- @param portStates [InstancePortStateList] <p>Information about the port states resulting from your request.</p>
function M.GetInstancePortStatesResult(portStates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancePortStatesResult")
	local t = { 
		["portStates"] = portStates,
	}
	M.AssertGetInstancePortStatesResult(t)
	return t
end

local GetInstanceStateRequest_keys = { "instanceName" = true, nil }

function M.AssertGetInstanceStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceStateRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceStateRequest_keys[k], "GetInstanceStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceStateRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance to get state information about.</p>
-- Required parameter: instanceName
function M.GetInstanceStateRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceStateRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertGetInstanceStateRequest(t)
	return t
end

local CreateKeyPairResult_keys = { "keyPair" = true, "publicKeyBase64" = true, "operation" = true, "privateKeyBase64" = true, nil }

function M.AssertCreateKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyPairResult to be of type 'table'")
	if struct["keyPair"] then M.AssertKeyPair(struct["keyPair"]) end
	if struct["publicKeyBase64"] then M.AssertBase64(struct["publicKeyBase64"]) end
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	if struct["privateKeyBase64"] then M.AssertBase64(struct["privateKeyBase64"]) end
	for k,_ in pairs(struct) do
		assert(CreateKeyPairResult_keys[k], "CreateKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyPairResult
--  
-- @param keyPair [KeyPair] <p>An array of key-value pairs containing information about the new key pair you just created.</p>
-- @param publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- @param operation [Operation] <p>An array of key-value pairs containing information about the results of your create key pair request.</p>
-- @param privateKeyBase64 [Base64] <p>A base64-encoded RSA private key.</p>
function M.CreateKeyPairResult(keyPair, publicKeyBase64, operation, privateKeyBase64, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyPairResult")
	local t = { 
		["keyPair"] = keyPair,
		["publicKeyBase64"] = publicKeyBase64,
		["operation"] = operation,
		["privateKeyBase64"] = privateKeyBase64,
	}
	M.AssertCreateKeyPairResult(t)
	return t
end

local GetStaticIpResult_keys = { "staticIp" = true, nil }

function M.AssertGetStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpResult to be of type 'table'")
	if struct["staticIp"] then M.AssertStaticIp(struct["staticIp"]) end
	for k,_ in pairs(struct) do
		assert(GetStaticIpResult_keys[k], "GetStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpResult
--  
-- @param staticIp [StaticIp] <p>An array of key-value pairs containing information about the requested static IP.</p>
function M.GetStaticIpResult(staticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpResult")
	local t = { 
		["staticIp"] = staticIp,
	}
	M.AssertGetStaticIpResult(t)
	return t
end

local CreateDomainResult_keys = { "operation" = true, nil }

function M.AssertCreateDomainResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainResult_keys[k], "CreateDomainResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the domain resource you created.</p>
function M.CreateDomainResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertCreateDomainResult(t)
	return t
end

local ReleaseStaticIpResult_keys = { "operations" = true, nil }

function M.AssertReleaseStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReleaseStaticIpResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(ReleaseStaticIpResult_keys[k], "ReleaseStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReleaseStaticIpResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.ReleaseStaticIpResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReleaseStaticIpResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertReleaseStaticIpResult(t)
	return t
end

local StartInstanceResult_keys = { "operations" = true, nil }

function M.AssertStartInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartInstanceResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(StartInstanceResult_keys[k], "StartInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartInstanceResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.StartInstanceResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartInstanceResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertStartInstanceResult(t)
	return t
end

local GetInstanceResult_keys = { "instance" = true, nil }

function M.AssertGetInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceResult to be of type 'table'")
	if struct["instance"] then M.AssertInstance(struct["instance"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceResult_keys[k], "GetInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceResult
--  
-- @param instance [Instance] <p>An array of key-value pairs containing information about the specified instance.</p>
function M.GetInstanceResult(instance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceResult")
	local t = { 
		["instance"] = instance,
	}
	M.AssertGetInstanceResult(t)
	return t
end

local MetricDatapoint_keys = { "sampleCount" = true, "timestamp" = true, "average" = true, "maximum" = true, "minimum" = true, "sum" = true, "unit" = true, nil }

function M.AssertMetricDatapoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDatapoint to be of type 'table'")
	if struct["sampleCount"] then M.Assertdouble(struct["sampleCount"]) end
	if struct["timestamp"] then M.Asserttimestamp(struct["timestamp"]) end
	if struct["average"] then M.Assertdouble(struct["average"]) end
	if struct["maximum"] then M.Assertdouble(struct["maximum"]) end
	if struct["minimum"] then M.Assertdouble(struct["minimum"]) end
	if struct["sum"] then M.Assertdouble(struct["sum"]) end
	if struct["unit"] then M.AssertMetricUnit(struct["unit"]) end
	for k,_ in pairs(struct) do
		assert(MetricDatapoint_keys[k], "MetricDatapoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDatapoint
-- <p>Describes the metric data point.</p>
-- @param sampleCount [double] <p>The sample count.</p>
-- @param timestamp [timestamp] <p>The timestamp (e.g., <code>1479816991.349</code>).</p>
-- @param average [double] <p>The average.</p>
-- @param maximum [double] <p>The maximum.</p>
-- @param minimum [double] <p>The minimum.</p>
-- @param sum [double] <p>The sum.</p>
-- @param unit [MetricUnit] <p>The unit. </p>
function M.MetricDatapoint(sampleCount, timestamp, average, maximum, minimum, sum, unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricDatapoint")
	local t = { 
		["sampleCount"] = sampleCount,
		["timestamp"] = timestamp,
		["average"] = average,
		["maximum"] = maximum,
		["minimum"] = minimum,
		["sum"] = sum,
		["unit"] = unit,
	}
	M.AssertMetricDatapoint(t)
	return t
end

local Region_keys = { "availabilityZones" = true, "displayName" = true, "description" = true, "continentCode" = true, "name" = true, nil }

function M.AssertRegion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Region to be of type 'table'")
	if struct["availabilityZones"] then M.AssertAvailabilityZoneList(struct["availabilityZones"]) end
	if struct["displayName"] then M.Assertstring(struct["displayName"]) end
	if struct["description"] then M.Assertstring(struct["description"]) end
	if struct["continentCode"] then M.Assertstring(struct["continentCode"]) end
	if struct["name"] then M.AssertRegionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Region_keys[k], "Region contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Region
-- <p>Describes the AWS Region.</p>
-- @param availabilityZones [AvailabilityZoneList] <p>The Availability Zones. Follows the format <code>us-east-1a</code> (case-sensitive).</p>
-- @param displayName [string] <p>The display name (e.g., <code>Virginia</code>).</p>
-- @param description [string] <p>The description of the AWS Region (e.g., <code>This region is recommended to serve users in the eastern United States and eastern Canada</code>).</p>
-- @param continentCode [string] <p>The continent code (e.g., <code>NA</code>, meaning North America).</p>
-- @param name [RegionName] <p>The region name (e.g., <code>us-east-1</code>).</p>
function M.Region(availabilityZones, displayName, description, continentCode, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Region")
	local t = { 
		["availabilityZones"] = availabilityZones,
		["displayName"] = displayName,
		["description"] = description,
		["continentCode"] = continentCode,
		["name"] = name,
	}
	M.AssertRegion(t)
	return t
end

local PutInstancePublicPortsRequest_keys = { "instanceName" = true, "portInfos" = true, nil }

function M.AssertPutInstancePublicPortsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInstancePublicPortsRequest to be of type 'table'")
	assert(struct["portInfos"], "Expected key portInfos to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	if struct["portInfos"] then M.AssertPortInfoList(struct["portInfos"]) end
	for k,_ in pairs(struct) do
		assert(PutInstancePublicPortsRequest_keys[k], "PutInstancePublicPortsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInstancePublicPortsRequest
--  
-- @param instanceName [ResourceName] <p>The Lightsail instance name of the public port(s) you are setting.</p>
-- @param portInfos [PortInfoList] <p>Specifies information about the public port(s).</p>
-- Required parameter: portInfos
-- Required parameter: instanceName
function M.PutInstancePublicPortsRequest(instanceName, portInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutInstancePublicPortsRequest")
	local t = { 
		["instanceName"] = instanceName,
		["portInfos"] = portInfos,
	}
	M.AssertPutInstancePublicPortsRequest(t)
	return t
end

local RebootInstanceResult_keys = { "operations" = true, nil }

function M.AssertRebootInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootInstanceResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(RebootInstanceResult_keys[k], "RebootInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootInstanceResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.RebootInstanceResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootInstanceResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertRebootInstanceResult(t)
	return t
end

local CreateInstanceSnapshotResult_keys = { "operations" = true, nil }

function M.AssertCreateInstanceSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceSnapshotResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstanceSnapshotResult_keys[k], "CreateInstanceSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceSnapshotResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances snapshot request.</p>
function M.CreateInstanceSnapshotResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceSnapshotResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertCreateInstanceSnapshotResult(t)
	return t
end

local Instance_keys = { "username" = true, "isStaticIp" = true, "networking" = true, "name" = true, "ipv6Address" = true, "resourceType" = true, "supportCode" = true, "blueprintName" = true, "hardware" = true, "privateIpAddress" = true, "state" = true, "arn" = true, "publicIpAddress" = true, "blueprintId" = true, "bundleId" = true, "sshKeyName" = true, "createdAt" = true, "location" = true, nil }

function M.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["username"] then M.AssertNonEmptyString(struct["username"]) end
	if struct["isStaticIp"] then M.Assertboolean(struct["isStaticIp"]) end
	if struct["networking"] then M.AssertInstanceNetworking(struct["networking"]) end
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	if struct["ipv6Address"] then M.AssertIpV6Address(struct["ipv6Address"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then M.Assertstring(struct["supportCode"]) end
	if struct["blueprintName"] then M.AssertNonEmptyString(struct["blueprintName"]) end
	if struct["hardware"] then M.AssertInstanceHardware(struct["hardware"]) end
	if struct["privateIpAddress"] then M.AssertIpAddress(struct["privateIpAddress"]) end
	if struct["state"] then M.AssertInstanceState(struct["state"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	if struct["publicIpAddress"] then M.AssertIpAddress(struct["publicIpAddress"]) end
	if struct["blueprintId"] then M.AssertNonEmptyString(struct["blueprintId"]) end
	if struct["bundleId"] then M.AssertNonEmptyString(struct["bundleId"]) end
	if struct["sshKeyName"] then M.AssertResourceName(struct["sshKeyName"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(Instance_keys[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Describes an instance (a virtual private server).</p>
-- @param username [NonEmptyString] <p>The user name for connecting to the instance (e.g., <code>ec2-user</code>).</p>
-- @param isStaticIp [boolean] <p>A Boolean value indicating whether this instance has a static IP assigned to it.</p>
-- @param networking [InstanceNetworking] <p>Information about the public ports and monthly data transfer rates for the instance.</p>
-- @param name [ResourceName] <p>The name the user gave the instance (e.g., <code>Amazon_Linux-1GB-Virginia-1</code>).</p>
-- @param ipv6Address [IpV6Address] <p>The IPv6 address of the instance.</p>
-- @param resourceType [ResourceType] <p>The type of resource (usually <code>Instance</code>).</p>
-- @param supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param blueprintName [NonEmptyString] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
-- @param hardware [InstanceHardware] <p>The size of the vCPU and the amount of RAM for the instance.</p>
-- @param privateIpAddress [IpAddress] <p>The private IP address of the instance.</p>
-- @param state [InstanceState] <p>The status code and the state (e.g., <code>running</code>) for the instance.</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE</code>).</p>
-- @param publicIpAddress [IpAddress] <p>The public IP address of the instance.</p>
-- @param blueprintId [NonEmptyString] <p>The blueprint ID (e.g., <code>os_amlinux_2016_03</code>).</p>
-- @param bundleId [NonEmptyString] <p>The bundle for the instance (e.g., <code>micro_1_0</code>).</p>
-- @param sshKeyName [ResourceName] <p>The name of the SSH key being used to connect to the instance (e.g., <code>LightsailDefaultKeyPair</code>).</p>
-- @param createdAt [IsoDate] <p>The timestamp when the instance was created (e.g., <code>1479734909.17</code>).</p>
-- @param location [ResourceLocation] <p>The region name and availability zone where the instance is located.</p>
function M.Instance(username, isStaticIp, networking, name, ipv6Address, resourceType, supportCode, blueprintName, hardware, privateIpAddress, state, arn, publicIpAddress, blueprintId, bundleId, sshKeyName, createdAt, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["username"] = username,
		["isStaticIp"] = isStaticIp,
		["networking"] = networking,
		["name"] = name,
		["ipv6Address"] = ipv6Address,
		["resourceType"] = resourceType,
		["supportCode"] = supportCode,
		["blueprintName"] = blueprintName,
		["hardware"] = hardware,
		["privateIpAddress"] = privateIpAddress,
		["state"] = state,
		["arn"] = arn,
		["publicIpAddress"] = publicIpAddress,
		["blueprintId"] = blueprintId,
		["bundleId"] = bundleId,
		["sshKeyName"] = sshKeyName,
		["createdAt"] = createdAt,
		["location"] = location,
	}
	M.AssertInstance(t)
	return t
end

local GetDomainRequest_keys = { "domainName" = true, nil }

function M.AssertGetDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainRequest_keys[k], "GetDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainRequest
--  
-- @param domainName [DomainName] <p>The domain name for which your want to return information about.</p>
-- Required parameter: domainName
function M.GetDomainRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertGetDomainRequest(t)
	return t
end

local UpdateDomainEntryRequest_keys = { "domainEntry" = true, "domainName" = true, nil }

function M.AssertUpdateDomainEntryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainEntryRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["domainEntry"], "Expected key domainEntry to exist in table")
	if struct["domainEntry"] then M.AssertDomainEntry(struct["domainEntry"]) end
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainEntryRequest_keys[k], "UpdateDomainEntryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainEntryRequest
--  
-- @param domainEntry [DomainEntry] <p>An array of key-value pairs containing information about the domain entry.</p>
-- @param domainName [DomainName] <p>The name of the domain recordset to update.</p>
-- Required parameter: domainName
-- Required parameter: domainEntry
function M.UpdateDomainEntryRequest(domainEntry, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainEntryRequest")
	local t = { 
		["domainEntry"] = domainEntry,
		["domainName"] = domainName,
	}
	M.AssertUpdateDomainEntryRequest(t)
	return t
end

local InstanceSnapshot_keys = { "fromInstanceName" = true, "name" = true, "sizeInGb" = true, "resourceType" = true, "supportCode" = true, "fromInstanceArn" = true, "state" = true, "arn" = true, "progress" = true, "fromBundleId" = true, "fromBlueprintId" = true, "createdAt" = true, "location" = true, nil }

function M.AssertInstanceSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceSnapshot to be of type 'table'")
	if struct["fromInstanceName"] then M.AssertResourceName(struct["fromInstanceName"]) end
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	if struct["sizeInGb"] then M.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then M.Assertstring(struct["supportCode"]) end
	if struct["fromInstanceArn"] then M.AssertNonEmptyString(struct["fromInstanceArn"]) end
	if struct["state"] then M.AssertInstanceSnapshotState(struct["state"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	if struct["progress"] then M.Assertstring(struct["progress"]) end
	if struct["fromBundleId"] then M.Assertstring(struct["fromBundleId"]) end
	if struct["fromBlueprintId"] then M.Assertstring(struct["fromBlueprintId"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(InstanceSnapshot_keys[k], "InstanceSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceSnapshot
-- <p>Describes the snapshot of the virtual private server, or <i>instance</i>.</p>
-- @param fromInstanceName [ResourceName] <p>The instance from which the snapshot was created.</p>
-- @param name [ResourceName] <p>The name of the snapshot.</p>
-- @param sizeInGb [integer] <p>The size in GB of the SSD.</p>
-- @param resourceType [ResourceType] <p>The type of resource (usually <code>InstanceSnapshot</code>).</p>
-- @param supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param fromInstanceArn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE</code>).</p>
-- @param state [InstanceSnapshotState] <p>The state the snapshot is in.</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the snapshot (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE</code>).</p>
-- @param progress [string] <p>The progress of the snapshot.</p>
-- @param fromBundleId [string] <p>The bundle ID from which you created the snapshot (e.g., <code>micro_1_0</code>).</p>
-- @param fromBlueprintId [string] <p>The blueprint ID from which you created the snapshot (e.g., <code>os_debian_8_3</code>). A blueprint is a virtual private server (or <i>instance</i>) image used to create instances quickly.</p>
-- @param createdAt [IsoDate] <p>The timestamp when the snapshot was created (e.g., <code>1479907467.024</code>).</p>
-- @param location [ResourceLocation] <p>The region name and availability zone where you created the snapshot.</p>
function M.InstanceSnapshot(fromInstanceName, name, sizeInGb, resourceType, supportCode, fromInstanceArn, state, arn, progress, fromBundleId, fromBlueprintId, createdAt, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceSnapshot")
	local t = { 
		["fromInstanceName"] = fromInstanceName,
		["name"] = name,
		["sizeInGb"] = sizeInGb,
		["resourceType"] = resourceType,
		["supportCode"] = supportCode,
		["fromInstanceArn"] = fromInstanceArn,
		["state"] = state,
		["arn"] = arn,
		["progress"] = progress,
		["fromBundleId"] = fromBundleId,
		["fromBlueprintId"] = fromBlueprintId,
		["createdAt"] = createdAt,
		["location"] = location,
	}
	M.AssertInstanceSnapshot(t)
	return t
end

local Operation_keys = { "status" = true, "resourceType" = true, "isTerminal" = true, "operationDetails" = true, "statusChangedAt" = true, "errorCode" = true, "errorDetails" = true, "location" = true, "operationType" = true, "resourceName" = true, "id" = true, "createdAt" = true, nil }

function M.AssertOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Operation to be of type 'table'")
	if struct["status"] then M.AssertOperationStatus(struct["status"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["isTerminal"] then M.Assertboolean(struct["isTerminal"]) end
	if struct["operationDetails"] then M.Assertstring(struct["operationDetails"]) end
	if struct["statusChangedAt"] then M.AssertIsoDate(struct["statusChangedAt"]) end
	if struct["errorCode"] then M.Assertstring(struct["errorCode"]) end
	if struct["errorDetails"] then M.Assertstring(struct["errorDetails"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	if struct["operationType"] then M.AssertOperationType(struct["operationType"]) end
	if struct["resourceName"] then M.AssertResourceName(struct["resourceName"]) end
	if struct["id"] then M.AssertNonEmptyString(struct["id"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(Operation_keys[k], "Operation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Operation
-- <p>Describes the API operation.</p>
-- @param status [OperationStatus] <p>The status of the operation. </p>
-- @param resourceType [ResourceType] <p>The resource type. </p>
-- @param isTerminal [boolean] <p>A Boolean value indicating whether the operation is terminal.</p>
-- @param operationDetails [string] <p>Details about the operation (e.g., <code>Debian-1GB-Virginia-1</code>).</p>
-- @param statusChangedAt [IsoDate] <p>The timestamp when the status was changed (e.g., <code>1479816991.349</code>).</p>
-- @param errorCode [string] <p>The error code.</p>
-- @param errorDetails [string] <p>The error details.</p>
-- @param location [ResourceLocation] <p>The region and Availability Zone.</p>
-- @param operationType [OperationType] <p>The type of operation. </p>
-- @param resourceName [ResourceName] <p>The resource name.</p>
-- @param id [NonEmptyString] <p>The ID of the operation.</p>
-- @param createdAt [IsoDate] <p>The timestamp when the operation was initialized (e.g., <code>1479816991.349</code>).</p>
function M.Operation(status, resourceType, isTerminal, operationDetails, statusChangedAt, errorCode, errorDetails, location, operationType, resourceName, id, createdAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Operation")
	local t = { 
		["status"] = status,
		["resourceType"] = resourceType,
		["isTerminal"] = isTerminal,
		["operationDetails"] = operationDetails,
		["statusChangedAt"] = statusChangedAt,
		["errorCode"] = errorCode,
		["errorDetails"] = errorDetails,
		["location"] = location,
		["operationType"] = operationType,
		["resourceName"] = resourceName,
		["id"] = id,
		["createdAt"] = createdAt,
	}
	M.AssertOperation(t)
	return t
end

local Disk_keys = { "name" = true, "sizeInGb" = true, "resourceType" = true, "supportCode" = true, "attachmentState" = true, "attachedTo" = true, "iops" = true, "gbInUse" = true, "arn" = true, "isAttached" = true, "path" = true, "isSystemDisk" = true, "createdAt" = true, "location" = true, nil }

function M.AssertDisk(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Disk to be of type 'table'")
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	if struct["sizeInGb"] then M.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then M.Assertstring(struct["supportCode"]) end
	if struct["attachmentState"] then M.Assertstring(struct["attachmentState"]) end
	if struct["attachedTo"] then M.Assertstring(struct["attachedTo"]) end
	if struct["iops"] then M.Assertinteger(struct["iops"]) end
	if struct["gbInUse"] then M.Assertinteger(struct["gbInUse"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	if struct["isAttached"] then M.Assertboolean(struct["isAttached"]) end
	if struct["path"] then M.Assertstring(struct["path"]) end
	if struct["isSystemDisk"] then M.Assertboolean(struct["isSystemDisk"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(Disk_keys[k], "Disk contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Disk
-- <p>Describes the hard disk (an SSD).</p>
-- @param name [ResourceName] <p>The name of the disk.</p>
-- @param sizeInGb [integer] <p>The size of the disk in GB.</p>
-- @param resourceType [ResourceType] <p>The resource type of the disk. </p>
-- @param supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param attachmentState [string] <p>The attachment state of the disk.</p>
-- @param attachedTo [string] <p>The resources to which the disk is attached.</p>
-- @param iops [integer] <p>The input/output operations per second (IOPS) of the disk.</p>
-- @param gbInUse [integer] <p>The number of GB in use by the disk.</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the disk.</p>
-- @param isAttached [boolean] <p>A Boolean value indicating whether the disk is attached.</p>
-- @param path [string] <p>The disk path.</p>
-- @param isSystemDisk [boolean] <p>A Boolean value indicating whether this disk is a system disk (has an operating system loaded on it).</p>
-- @param createdAt [IsoDate] <p>The date when the disk was created.</p>
-- @param location [ResourceLocation] <p>The region and Availability Zone where the disk is located.</p>
function M.Disk(name, sizeInGb, resourceType, supportCode, attachmentState, attachedTo, iops, gbInUse, arn, isAttached, path, isSystemDisk, createdAt, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Disk")
	local t = { 
		["name"] = name,
		["sizeInGb"] = sizeInGb,
		["resourceType"] = resourceType,
		["supportCode"] = supportCode,
		["attachmentState"] = attachmentState,
		["attachedTo"] = attachedTo,
		["iops"] = iops,
		["gbInUse"] = gbInUse,
		["arn"] = arn,
		["isAttached"] = isAttached,
		["path"] = path,
		["isSystemDisk"] = isSystemDisk,
		["createdAt"] = createdAt,
		["location"] = location,
	}
	M.AssertDisk(t)
	return t
end

local AttachStaticIpResult_keys = { "operations" = true, nil }

function M.AssertAttachStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachStaticIpResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(AttachStaticIpResult_keys[k], "AttachStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachStaticIpResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about your API operations.</p>
function M.AttachStaticIpResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachStaticIpResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertAttachStaticIpResult(t)
	return t
end

local DeleteDomainRequest_keys = { "domainName" = true, nil }

function M.AssertDeleteDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainRequest_keys[k], "DeleteDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainRequest
--  
-- @param domainName [DomainName] <p>The specific domain name to delete.</p>
-- Required parameter: domainName
function M.DeleteDomainRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertDeleteDomainRequest(t)
	return t
end

local InstanceAccessDetails_keys = { "username" = true, "certKey" = true, "instanceName" = true, "privateKey" = true, "expiresAt" = true, "protocol" = true, "password" = true, "ipAddress" = true, nil }

function M.AssertInstanceAccessDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAccessDetails to be of type 'table'")
	if struct["username"] then M.Assertstring(struct["username"]) end
	if struct["certKey"] then M.Assertstring(struct["certKey"]) end
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	if struct["privateKey"] then M.Assertstring(struct["privateKey"]) end
	if struct["expiresAt"] then M.AssertIsoDate(struct["expiresAt"]) end
	if struct["protocol"] then M.AssertInstanceAccessProtocol(struct["protocol"]) end
	if struct["password"] then M.Assertstring(struct["password"]) end
	if struct["ipAddress"] then M.AssertIpAddress(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAccessDetails_keys[k], "InstanceAccessDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAccessDetails
-- <p>The parameters for gaining temporary access to one of your Amazon Lightsail instances.</p>
-- @param username [string] <p>The user name to use when logging in to the Amazon Lightsail instance.</p>
-- @param certKey [string] <p>For SSH access, the public key to use when accessing your instance For OpenSSH clients (e.g., command line SSH), you should save this value to <code>tempkey-cert.pub</code>.</p>
-- @param instanceName [ResourceName] <p>The name of this Amazon Lightsail instance.</p>
-- @param privateKey [string] <p>For SSH access, the temporary private key. For OpenSSH clients (e.g., command line SSH), you should save this value to <code>tempkey</code>).</p>
-- @param expiresAt [IsoDate] <p>For SSH access, the date on which the temporary keys expire.</p>
-- @param protocol [InstanceAccessProtocol] <p>The protocol for these Amazon Lightsail instance access details.</p>
-- @param password [string] <p>For RDP access, the temporary password of the Amazon EC2 instance.</p>
-- @param ipAddress [IpAddress] <p>The public IP address of the Amazon Lightsail instance.</p>
function M.InstanceAccessDetails(username, certKey, instanceName, privateKey, expiresAt, protocol, password, ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAccessDetails")
	local t = { 
		["username"] = username,
		["certKey"] = certKey,
		["instanceName"] = instanceName,
		["privateKey"] = privateKey,
		["expiresAt"] = expiresAt,
		["protocol"] = protocol,
		["password"] = password,
		["ipAddress"] = ipAddress,
	}
	M.AssertInstanceAccessDetails(t)
	return t
end

local GetKeyPairRequest_keys = { "keyPairName" = true, nil }

function M.AssertGetKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	if struct["keyPairName"] then M.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyPairRequest_keys[k], "GetKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairRequest
--  
-- @param keyPairName [ResourceName] <p>The name of the key pair for which you are requesting information.</p>
-- Required parameter: keyPairName
function M.GetKeyPairRequest(keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairRequest")
	local t = { 
		["keyPairName"] = keyPairName,
	}
	M.AssertGetKeyPairRequest(t)
	return t
end

local DeleteKeyPairRequest_keys = { "keyPairName" = true, nil }

function M.AssertDeleteKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	if struct["keyPairName"] then M.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteKeyPairRequest_keys[k], "DeleteKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteKeyPairRequest
--  
-- @param keyPairName [ResourceName] <p>The name of the key pair to delete.</p>
-- Required parameter: keyPairName
function M.DeleteKeyPairRequest(keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteKeyPairRequest")
	local t = { 
		["keyPairName"] = keyPairName,
	}
	M.AssertDeleteKeyPairRequest(t)
	return t
end

local GetOperationRequest_keys = { "operationId" = true, nil }

function M.AssertGetOperationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationRequest to be of type 'table'")
	assert(struct["operationId"], "Expected key operationId to exist in table")
	if struct["operationId"] then M.AssertNonEmptyString(struct["operationId"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationRequest_keys[k], "GetOperationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationRequest
--  
-- @param operationId [NonEmptyString] <p>A GUID used to identify the operation.</p>
-- Required parameter: operationId
function M.GetOperationRequest(operationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationRequest")
	local t = { 
		["operationId"] = operationId,
	}
	M.AssertGetOperationRequest(t)
	return t
end

local GetBlueprintsResult_keys = { "nextPageToken" = true, "blueprints" = true, nil }

function M.AssertGetBlueprintsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlueprintsResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["blueprints"] then M.AssertBlueprintList(struct["blueprints"]) end
	for k,_ in pairs(struct) do
		assert(GetBlueprintsResult_keys[k], "GetBlueprintsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlueprintsResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get blueprints request.</p>
-- @param blueprints [BlueprintList] <p>An array of key-value pairs that contains information about the available blueprints.</p>
function M.GetBlueprintsResult(nextPageToken, blueprints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBlueprintsResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["blueprints"] = blueprints,
	}
	M.AssertGetBlueprintsResult(t)
	return t
end

local CreateInstancesResult_keys = { "operations" = true, nil }

function M.AssertCreateInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstancesResult_keys[k], "CreateInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances request.</p>
function M.CreateInstancesResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertCreateInstancesResult(t)
	return t
end

local DetachStaticIpResult_keys = { "operations" = true, nil }

function M.AssertDetachStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachStaticIpResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(DetachStaticIpResult_keys[k], "DetachStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachStaticIpResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your detach static IP request.</p>
function M.DetachStaticIpResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachStaticIpResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertDetachStaticIpResult(t)
	return t
end

local InstancePortInfo_keys = { "protocol" = true, "accessType" = true, "commonName" = true, "accessFrom" = true, "fromPort" = true, "accessDirection" = true, "toPort" = true, nil }

function M.AssertInstancePortInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePortInfo to be of type 'table'")
	if struct["protocol"] then M.AssertNetworkProtocol(struct["protocol"]) end
	if struct["accessType"] then M.AssertPortAccessType(struct["accessType"]) end
	if struct["commonName"] then M.Assertstring(struct["commonName"]) end
	if struct["accessFrom"] then M.Assertstring(struct["accessFrom"]) end
	if struct["fromPort"] then M.AssertPort(struct["fromPort"]) end
	if struct["accessDirection"] then M.AssertAccessDirection(struct["accessDirection"]) end
	if struct["toPort"] then M.AssertPort(struct["toPort"]) end
	for k,_ in pairs(struct) do
		assert(InstancePortInfo_keys[k], "InstancePortInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePortInfo
-- <p>Describes information about the instance ports.</p>
-- @param protocol [NetworkProtocol] <p>The protocol being used. Can be one of the following.</p> <ul> <li> <p> <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and error-checked delivery of streamed data between applications running on hosts communicating by an IP network. If you have an application that doesn't require reliable data stream service, use UDP instead.</p> </li> <li> <p> <code>all</code> - All transport layer protocol types. For more general information, see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on Wikipedia.</p> </li> <li> <p> <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior communications are not required to set up transmission channels or data paths. Applications that don't require reliable data stream service can use UDP, which provides a connectionless datagram service that emphasizes reduced latency over reliability. If you do require reliable data stream service, use TCP instead.</p> </li> </ul>
-- @param accessType [PortAccessType] <p>The type of access (<code>Public</code> or <code>Private</code>).</p>
-- @param commonName [string] <p>The common name.</p>
-- @param accessFrom [string] <p>The location from which access is allowed (e.g., <code>Anywhere (0.0.0.0/0)</code>).</p>
-- @param fromPort [Port] <p>The first port in the range.</p>
-- @param accessDirection [AccessDirection] <p>The access direction (<code>inbound</code> or <code>outbound</code>).</p>
-- @param toPort [Port] <p>The last port in the range.</p>
function M.InstancePortInfo(protocol, accessType, commonName, accessFrom, fromPort, accessDirection, toPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancePortInfo")
	local t = { 
		["protocol"] = protocol,
		["accessType"] = accessType,
		["commonName"] = commonName,
		["accessFrom"] = accessFrom,
		["fromPort"] = fromPort,
		["accessDirection"] = accessDirection,
		["toPort"] = toPort,
	}
	M.AssertInstancePortInfo(t)
	return t
end

local GetInstancesResult_keys = { "nextPageToken" = true, "instances" = true, nil }

function M.AssertGetInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancesResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["instances"] then M.AssertInstanceList(struct["instances"]) end
	for k,_ in pairs(struct) do
		assert(GetInstancesResult_keys[k], "GetInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancesResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get instances request.</p>
-- @param instances [InstanceList] <p>An array of key-value pairs containing information about your instances.</p>
function M.GetInstancesResult(nextPageToken, instances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancesResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["instances"] = instances,
	}
	M.AssertGetInstancesResult(t)
	return t
end

local GetInstanceSnapshotRequest_keys = { "instanceSnapshotName" = true, nil }

function M.AssertGetInstanceSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotRequest to be of type 'table'")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	if struct["instanceSnapshotName"] then M.AssertResourceName(struct["instanceSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceSnapshotRequest_keys[k], "GetInstanceSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotRequest
--  
-- @param instanceSnapshotName [ResourceName] <p>The name of the snapshot for which you are requesting information.</p>
-- Required parameter: instanceSnapshotName
function M.GetInstanceSnapshotRequest(instanceSnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotRequest")
	local t = { 
		["instanceSnapshotName"] = instanceSnapshotName,
	}
	M.AssertGetInstanceSnapshotRequest(t)
	return t
end

local ReleaseStaticIpRequest_keys = { "staticIpName" = true, nil }

function M.AssertReleaseStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReleaseStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then M.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(ReleaseStaticIpRequest_keys[k], "ReleaseStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReleaseStaticIpRequest
--  
-- @param staticIpName [ResourceName] <p>The name of the static IP to delete.</p>
-- Required parameter: staticIpName
function M.ReleaseStaticIpRequest(staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReleaseStaticIpRequest")
	local t = { 
		["staticIpName"] = staticIpName,
	}
	M.AssertReleaseStaticIpRequest(t)
	return t
end

local GetOperationsForResourceRequest_keys = { "resourceName" = true, "pageToken" = true, nil }

function M.AssertGetOperationsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsForResourceRequest to be of type 'table'")
	assert(struct["resourceName"], "Expected key resourceName to exist in table")
	if struct["resourceName"] then M.AssertResourceName(struct["resourceName"]) end
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationsForResourceRequest_keys[k], "GetOperationsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsForResourceRequest
--  
-- @param resourceName [ResourceName] <p>The name of the resource for which you are requesting information.</p>
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get operations for resource request.</p>
-- Required parameter: resourceName
function M.GetOperationsForResourceRequest(resourceName, pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsForResourceRequest")
	local t = { 
		["resourceName"] = resourceName,
		["pageToken"] = pageToken,
	}
	M.AssertGetOperationsForResourceRequest(t)
	return t
end

local GetOperationResult_keys = { "operation" = true, nil }

function M.AssertGetOperationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationResult_keys[k], "GetOperationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the results of your get operation request.</p>
function M.GetOperationResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertGetOperationResult(t)
	return t
end

local GetInstanceMetricDataRequest_keys = { "statistics" = true, "period" = true, "startTime" = true, "endTime" = true, "instanceName" = true, "unit" = true, "metricName" = true, nil }

function M.AssertGetInstanceMetricDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceMetricDataRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["period"], "Expected key period to exist in table")
	assert(struct["startTime"], "Expected key startTime to exist in table")
	assert(struct["endTime"], "Expected key endTime to exist in table")
	assert(struct["unit"], "Expected key unit to exist in table")
	assert(struct["statistics"], "Expected key statistics to exist in table")
	if struct["statistics"] then M.AssertMetricStatisticList(struct["statistics"]) end
	if struct["period"] then M.AssertMetricPeriod(struct["period"]) end
	if struct["startTime"] then M.Asserttimestamp(struct["startTime"]) end
	if struct["endTime"] then M.Asserttimestamp(struct["endTime"]) end
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	if struct["unit"] then M.AssertMetricUnit(struct["unit"]) end
	if struct["metricName"] then M.AssertInstanceMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceMetricDataRequest_keys[k], "GetInstanceMetricDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceMetricDataRequest
--  
-- @param statistics [MetricStatisticList] <p>The instance statistics. </p>
-- @param period [MetricPeriod] <p>The time period for which you are requesting data.</p>
-- @param startTime [timestamp] <p>The start time of the time period.</p>
-- @param endTime [timestamp] <p>The end time of the time period.</p>
-- @param instanceName [ResourceName] <p>The name of the instance for which you want to get metrics data.</p>
-- @param unit [MetricUnit] <p>The unit. The list of valid values is below.</p>
-- @param metricName [InstanceMetricName] <p>The metric name to get data about. </p>
-- Required parameter: instanceName
-- Required parameter: metricName
-- Required parameter: period
-- Required parameter: startTime
-- Required parameter: endTime
-- Required parameter: unit
-- Required parameter: statistics
function M.GetInstanceMetricDataRequest(statistics, period, startTime, endTime, instanceName, unit, metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceMetricDataRequest")
	local t = { 
		["statistics"] = statistics,
		["period"] = period,
		["startTime"] = startTime,
		["endTime"] = endTime,
		["instanceName"] = instanceName,
		["unit"] = unit,
		["metricName"] = metricName,
	}
	M.AssertGetInstanceMetricDataRequest(t)
	return t
end

local GetRegionsResult_keys = { "regions" = true, nil }

function M.AssertGetRegionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegionsResult to be of type 'table'")
	if struct["regions"] then M.AssertRegionList(struct["regions"]) end
	for k,_ in pairs(struct) do
		assert(GetRegionsResult_keys[k], "GetRegionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegionsResult
--  
-- @param regions [RegionList] <p>An array of key-value pairs containing information about your get regions request.</p>
function M.GetRegionsResult(regions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegionsResult")
	local t = { 
		["regions"] = regions,
	}
	M.AssertGetRegionsResult(t)
	return t
end

local IsVpcPeeredRequest_keys = { nil }

function M.AssertIsVpcPeeredRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IsVpcPeeredRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IsVpcPeeredRequest_keys[k], "IsVpcPeeredRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IsVpcPeeredRequest
--  
function M.IsVpcPeeredRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IsVpcPeeredRequest")
	local t = { 
	}
	M.AssertIsVpcPeeredRequest(t)
	return t
end

local NotFoundException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>Lightsail throws this exception when it cannot find a resource.</p>
-- @param docs [string] <p>Lightsail throws this exception when it cannot find a resource.</p>
-- @param message [string] <p>Lightsail throws this exception when it cannot find a resource.</p>
-- @param code [string] <p>Lightsail throws this exception when it cannot find a resource.</p>
-- @param tip [string] <p>Lightsail throws this exception when it cannot find a resource.</p>
function M.NotFoundException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertNotFoundException(t)
	return t
end

local OpenInstancePublicPortsResult_keys = { "operation" = true, nil }

function M.AssertOpenInstancePublicPortsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenInstancePublicPortsResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(OpenInstancePublicPortsResult_keys[k], "OpenInstancePublicPortsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenInstancePublicPortsResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.OpenInstancePublicPortsResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OpenInstancePublicPortsResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertOpenInstancePublicPortsResult(t)
	return t
end

local GetInstanceSnapshotsRequest_keys = { "pageToken" = true, nil }

function M.AssertGetInstanceSnapshotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotsRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceSnapshotsRequest_keys[k], "GetInstanceSnapshotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotsRequest
--  
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get instance snapshots request.</p>
function M.GetInstanceSnapshotsRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotsRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetInstanceSnapshotsRequest(t)
	return t
end

local GetOperationsResult_keys = { "operations" = true, "nextPageToken" = true, nil }

function M.AssertGetOperationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationsResult_keys[k], "GetOperationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your get operations request.</p>
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get operations request.</p>
function M.GetOperationsResult(operations, nextPageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsResult")
	local t = { 
		["operations"] = operations,
		["nextPageToken"] = nextPageToken,
	}
	M.AssertGetOperationsResult(t)
	return t
end

local UnpeerVpcRequest_keys = { nil }

function M.AssertUnpeerVpcRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnpeerVpcRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnpeerVpcRequest_keys[k], "UnpeerVpcRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnpeerVpcRequest
--  
function M.UnpeerVpcRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnpeerVpcRequest")
	local t = { 
	}
	M.AssertUnpeerVpcRequest(t)
	return t
end

local UnpeerVpcResult_keys = { "operation" = true, nil }

function M.AssertUnpeerVpcResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnpeerVpcResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(UnpeerVpcResult_keys[k], "UnpeerVpcResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnpeerVpcResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.UnpeerVpcResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnpeerVpcResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertUnpeerVpcResult(t)
	return t
end

local DeleteDomainResult_keys = { "operation" = true, nil }

function M.AssertDeleteDomainResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainResult_keys[k], "DeleteDomainResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the results of your delete domain request.</p>
function M.DeleteDomainResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertDeleteDomainResult(t)
	return t
end

local GetKeyPairsRequest_keys = { "pageToken" = true, nil }

function M.AssertGetKeyPairsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairsRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyPairsRequest_keys[k], "GetKeyPairsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairsRequest
--  
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get key pairs request.</p>
function M.GetKeyPairsRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairsRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetKeyPairsRequest(t)
	return t
end

local ImportKeyPairRequest_keys = { "publicKeyBase64" = true, "keyPairName" = true, nil }

function M.AssertImportKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	assert(struct["publicKeyBase64"], "Expected key publicKeyBase64 to exist in table")
	if struct["publicKeyBase64"] then M.AssertBase64(struct["publicKeyBase64"]) end
	if struct["keyPairName"] then M.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(ImportKeyPairRequest_keys[k], "ImportKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyPairRequest
--  
-- @param publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- @param keyPairName [ResourceName] <p>The name of the key pair for which you want to import the public key.</p>
-- Required parameter: keyPairName
-- Required parameter: publicKeyBase64
function M.ImportKeyPairRequest(publicKeyBase64, keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyPairRequest")
	local t = { 
		["publicKeyBase64"] = publicKeyBase64,
		["keyPairName"] = keyPairName,
	}
	M.AssertImportKeyPairRequest(t)
	return t
end

local PutInstancePublicPortsResult_keys = { "operation" = true, nil }

function M.AssertPutInstancePublicPortsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInstancePublicPortsResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(PutInstancePublicPortsResult_keys[k], "PutInstancePublicPortsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInstancePublicPortsResult
--  
-- @param operation [Operation] <p>Describes metadata about the operation you just executed.</p>
function M.PutInstancePublicPortsResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutInstancePublicPortsResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertPutInstancePublicPortsResult(t)
	return t
end

local DeleteInstanceSnapshotRequest_keys = { "instanceSnapshotName" = true, nil }

function M.AssertDeleteInstanceSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceSnapshotRequest to be of type 'table'")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	if struct["instanceSnapshotName"] then M.AssertResourceName(struct["instanceSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInstanceSnapshotRequest_keys[k], "DeleteInstanceSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceSnapshotRequest
--  
-- @param instanceSnapshotName [ResourceName] <p>The name of the snapshot to delete.</p>
-- Required parameter: instanceSnapshotName
function M.DeleteInstanceSnapshotRequest(instanceSnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceSnapshotRequest")
	local t = { 
		["instanceSnapshotName"] = instanceSnapshotName,
	}
	M.AssertDeleteInstanceSnapshotRequest(t)
	return t
end

local GetOperationsForResourceResult_keys = { "operations" = true, "nextPageToken" = true, "nextPageCount" = true, nil }

function M.AssertGetOperationsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsForResourceResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["nextPageCount"] then M.Assertstring(struct["nextPageCount"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationsForResourceResult_keys[k], "GetOperationsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsForResourceResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your get operations for resource request.</p>
-- @param nextPageToken [string] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param nextPageCount [string] <p>(Deprecated) Returns the number of pages of results that remain.</p> <note> <p>In releases prior to June 12, 2017, this parameter returned <code>null</code> by the API. It is now deprecated, and the API returns the <code>nextPageToken</code> parameter instead.</p> </note>
function M.GetOperationsForResourceResult(operations, nextPageToken, nextPageCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsForResourceResult")
	local t = { 
		["operations"] = operations,
		["nextPageToken"] = nextPageToken,
		["nextPageCount"] = nextPageCount,
	}
	M.AssertGetOperationsForResourceResult(t)
	return t
end

local GetStaticIpsResult_keys = { "nextPageToken" = true, "staticIps" = true, nil }

function M.AssertGetStaticIpsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpsResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["staticIps"] then M.AssertStaticIpList(struct["staticIps"]) end
	for k,_ in pairs(struct) do
		assert(GetStaticIpsResult_keys[k], "GetStaticIpsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpsResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
-- @param staticIps [StaticIpList] <p>An array of key-value pairs containing information about your get static IPs request.</p>
function M.GetStaticIpsResult(nextPageToken, staticIps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpsResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["staticIps"] = staticIps,
	}
	M.AssertGetStaticIpsResult(t)
	return t
end

local Domain_keys = { "domainEntries" = true, "name" = true, "resourceType" = true, "supportCode" = true, "arn" = true, "createdAt" = true, "location" = true, nil }

function M.AssertDomain(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Domain to be of type 'table'")
	if struct["domainEntries"] then M.AssertDomainEntryList(struct["domainEntries"]) end
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then M.Assertstring(struct["supportCode"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(Domain_keys[k], "Domain contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Domain
-- <p>Describes a domain where you are storing recordsets in Lightsail.</p>
-- @param domainEntries [DomainEntryList] <p>An array of key-value pairs containing information about the domain entries.</p>
-- @param name [ResourceName] <p>The name of the domain.</p>
-- @param resourceType [ResourceType] <p>The resource type. </p>
-- @param supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the domain recordset (e.g., <code>arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE</code>).</p>
-- @param createdAt [IsoDate] <p>The date when the domain recordset was created.</p>
-- @param location [ResourceLocation] <p>The AWS Region and Availability Zones where the domain recordset was created.</p>
function M.Domain(domainEntries, name, resourceType, supportCode, arn, createdAt, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Domain")
	local t = { 
		["domainEntries"] = domainEntries,
		["name"] = name,
		["resourceType"] = resourceType,
		["supportCode"] = supportCode,
		["arn"] = arn,
		["createdAt"] = createdAt,
		["location"] = location,
	}
	M.AssertDomain(t)
	return t
end

local AvailabilityZone_keys = { "state" = true, "zoneName" = true, nil }

function M.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["state"] then M.AssertNonEmptyString(struct["state"]) end
	if struct["zoneName"] then M.AssertNonEmptyString(struct["zoneName"]) end
	for k,_ in pairs(struct) do
		assert(AvailabilityZone_keys[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- <p>Describes an Availability Zone.</p>
-- @param state [NonEmptyString] <p>The state of the Availability Zone.</p>
-- @param zoneName [NonEmptyString] <p>The name of the Availability Zone. The format is <code>us-east-1a</code> (case-sensitive).</p>
function M.AvailabilityZone(state, zoneName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["state"] = state,
		["zoneName"] = zoneName,
	}
	M.AssertAvailabilityZone(t)
	return t
end

local InstanceHardware_keys = { "cpuCount" = true, "disks" = true, "ramSizeInGb" = true, nil }

function M.AssertInstanceHardware(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceHardware to be of type 'table'")
	if struct["cpuCount"] then M.Assertinteger(struct["cpuCount"]) end
	if struct["disks"] then M.AssertDiskList(struct["disks"]) end
	if struct["ramSizeInGb"] then M.Assertfloat(struct["ramSizeInGb"]) end
	for k,_ in pairs(struct) do
		assert(InstanceHardware_keys[k], "InstanceHardware contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceHardware
-- <p>Describes the hardware for the instance.</p>
-- @param cpuCount [integer] <p>The number of vCPUs the instance has.</p>
-- @param disks [DiskList] <p>The disks attached to the instance.</p>
-- @param ramSizeInGb [float] <p>The amount of RAM in GB on the instance (e.g., <code>1.0</code>).</p>
function M.InstanceHardware(cpuCount, disks, ramSizeInGb, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceHardware")
	local t = { 
		["cpuCount"] = cpuCount,
		["disks"] = disks,
		["ramSizeInGb"] = ramSizeInGb,
	}
	M.AssertInstanceHardware(t)
	return t
end

local PeerVpcRequest_keys = { nil }

function M.AssertPeerVpcRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PeerVpcRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PeerVpcRequest_keys[k], "PeerVpcRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PeerVpcRequest
--  
function M.PeerVpcRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PeerVpcRequest")
	local t = { 
	}
	M.AssertPeerVpcRequest(t)
	return t
end

local StopInstanceResult_keys = { "operations" = true, nil }

function M.AssertStopInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(StopInstanceResult_keys[k], "StopInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.StopInstanceResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopInstanceResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertStopInstanceResult(t)
	return t
end

local KeyPair_keys = { "name" = true, "resourceType" = true, "supportCode" = true, "arn" = true, "fingerprint" = true, "createdAt" = true, "location" = true, nil }

function M.AssertKeyPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPair to be of type 'table'")
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then M.Assertstring(struct["supportCode"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	if struct["fingerprint"] then M.AssertBase64(struct["fingerprint"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(KeyPair_keys[k], "KeyPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPair
-- <p>Describes the SSH key pair.</p>
-- @param name [ResourceName] <p>The friendly name of the SSH key pair.</p>
-- @param resourceType [ResourceType] <p>The resource type (usually <code>KeyPair</code>).</p>
-- @param supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the key pair (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE</code>).</p>
-- @param fingerprint [Base64] <p>The RSA fingerprint of the key pair.</p>
-- @param createdAt [IsoDate] <p>The timestamp when the key pair was created (e.g., <code>1479816991.349</code>).</p>
-- @param location [ResourceLocation] <p>The region name and Availability Zone where the key pair was created.</p>
function M.KeyPair(name, resourceType, supportCode, arn, fingerprint, createdAt, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPair")
	local t = { 
		["name"] = name,
		["resourceType"] = resourceType,
		["supportCode"] = supportCode,
		["arn"] = arn,
		["fingerprint"] = fingerprint,
		["createdAt"] = createdAt,
		["location"] = location,
	}
	M.AssertKeyPair(t)
	return t
end

local GetActiveNamesRequest_keys = { "pageToken" = true, nil }

function M.AssertGetActiveNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActiveNamesRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetActiveNamesRequest_keys[k], "GetActiveNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActiveNamesRequest
--  
-- @param pageToken [string] <p>A token used for paginating results from your get active names request.</p>
function M.GetActiveNamesRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActiveNamesRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetActiveNamesRequest(t)
	return t
end

local CloseInstancePublicPortsRequest_keys = { "instanceName" = true, "portInfo" = true, nil }

function M.AssertCloseInstancePublicPortsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloseInstancePublicPortsRequest to be of type 'table'")
	assert(struct["portInfo"], "Expected key portInfo to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	if struct["portInfo"] then M.AssertPortInfo(struct["portInfo"]) end
	for k,_ in pairs(struct) do
		assert(CloseInstancePublicPortsRequest_keys[k], "CloseInstancePublicPortsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloseInstancePublicPortsRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance on which you're attempting to close the public ports.</p>
-- @param portInfo [PortInfo] <p>Information about the public port you are trying to close.</p>
-- Required parameter: portInfo
-- Required parameter: instanceName
function M.CloseInstancePublicPortsRequest(instanceName, portInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloseInstancePublicPortsRequest")
	local t = { 
		["instanceName"] = instanceName,
		["portInfo"] = portInfo,
	}
	M.AssertCloseInstancePublicPortsRequest(t)
	return t
end

local PortInfo_keys = { "toPort" = true, "fromPort" = true, "protocol" = true, nil }

function M.AssertPortInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortInfo to be of type 'table'")
	if struct["toPort"] then M.AssertPort(struct["toPort"]) end
	if struct["fromPort"] then M.AssertPort(struct["fromPort"]) end
	if struct["protocol"] then M.AssertNetworkProtocol(struct["protocol"]) end
	for k,_ in pairs(struct) do
		assert(PortInfo_keys[k], "PortInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortInfo
-- <p>Describes information about the ports on your virtual private server (or <i>instance</i>).</p>
-- @param toPort [Port] <p>The last port in the range.</p>
-- @param fromPort [Port] <p>The first port in the range.</p>
-- @param protocol [NetworkProtocol] <p>The protocol. </p>
function M.PortInfo(toPort, fromPort, protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PortInfo")
	local t = { 
		["toPort"] = toPort,
		["fromPort"] = fromPort,
		["protocol"] = protocol,
	}
	M.AssertPortInfo(t)
	return t
end

local CreateDomainEntryRequest_keys = { "domainEntry" = true, "domainName" = true, nil }

function M.AssertCreateDomainEntryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainEntryRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["domainEntry"], "Expected key domainEntry to exist in table")
	if struct["domainEntry"] then M.AssertDomainEntry(struct["domainEntry"]) end
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainEntryRequest_keys[k], "CreateDomainEntryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainEntryRequest
--  
-- @param domainEntry [DomainEntry] <p>An array of key-value pairs containing information about the domain entry request.</p>
-- @param domainName [DomainName] <p>The domain name (e.g., <code>example.com</code>) for which you want to create the domain entry.</p>
-- Required parameter: domainName
-- Required parameter: domainEntry
function M.CreateDomainEntryRequest(domainEntry, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainEntryRequest")
	local t = { 
		["domainEntry"] = domainEntry,
		["domainName"] = domainName,
	}
	M.AssertCreateDomainEntryRequest(t)
	return t
end

local CreateDomainEntryResult_keys = { "operation" = true, nil }

function M.AssertCreateDomainEntryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainEntryResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainEntryResult_keys[k], "CreateDomainEntryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainEntryResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the operation.</p>
function M.CreateDomainEntryResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainEntryResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertCreateDomainEntryResult(t)
	return t
end

local GetInstanceRequest_keys = { "instanceName" = true, nil }

function M.AssertGetInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceRequest_keys[k], "GetInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance.</p>
-- Required parameter: instanceName
function M.GetInstanceRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertGetInstanceRequest(t)
	return t
end

local GetBundlesRequest_keys = { "includeInactive" = true, "pageToken" = true, nil }

function M.AssertGetBundlesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBundlesRequest to be of type 'table'")
	if struct["includeInactive"] then M.Assertboolean(struct["includeInactive"]) end
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetBundlesRequest_keys[k], "GetBundlesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBundlesRequest
--  
-- @param includeInactive [boolean] <p>A Boolean value that indicates whether to include inactive bundle results in your request.</p>
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get bundles request.</p>
function M.GetBundlesRequest(includeInactive, pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBundlesRequest")
	local t = { 
		["includeInactive"] = includeInactive,
		["pageToken"] = pageToken,
	}
	M.AssertGetBundlesRequest(t)
	return t
end

local ImportKeyPairResult_keys = { "operation" = true, nil }

function M.AssertImportKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyPairResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(ImportKeyPairResult_keys[k], "ImportKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyPairResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.ImportKeyPairResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyPairResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertImportKeyPairResult(t)
	return t
end

local RebootInstanceRequest_keys = { "instanceName" = true, nil }

function M.AssertRebootInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(RebootInstanceRequest_keys[k], "RebootInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootInstanceRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance to reboot.</p>
-- Required parameter: instanceName
function M.RebootInstanceRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootInstanceRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertRebootInstanceRequest(t)
	return t
end

local OpenInstancePublicPortsRequest_keys = { "instanceName" = true, "portInfo" = true, nil }

function M.AssertOpenInstancePublicPortsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenInstancePublicPortsRequest to be of type 'table'")
	assert(struct["portInfo"], "Expected key portInfo to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	if struct["portInfo"] then M.AssertPortInfo(struct["portInfo"]) end
	for k,_ in pairs(struct) do
		assert(OpenInstancePublicPortsRequest_keys[k], "OpenInstancePublicPortsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenInstancePublicPortsRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance for which you want to open the public ports.</p>
-- @param portInfo [PortInfo] <p>An array of key-value pairs containing information about the port mappings.</p>
-- Required parameter: portInfo
-- Required parameter: instanceName
function M.OpenInstancePublicPortsRequest(instanceName, portInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OpenInstancePublicPortsRequest")
	local t = { 
		["instanceName"] = instanceName,
		["portInfo"] = portInfo,
	}
	M.AssertOpenInstancePublicPortsRequest(t)
	return t
end

local Blueprint_keys = { "group" = true, "description" = true, "productUrl" = true, "version" = true, "licenseUrl" = true, "versionCode" = true, "blueprintId" = true, "minPower" = true, "type" = true, "isActive" = true, "name" = true, nil }

function M.AssertBlueprint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Blueprint to be of type 'table'")
	if struct["group"] then M.AssertNonEmptyString(struct["group"]) end
	if struct["description"] then M.Assertstring(struct["description"]) end
	if struct["productUrl"] then M.Assertstring(struct["productUrl"]) end
	if struct["version"] then M.Assertstring(struct["version"]) end
	if struct["licenseUrl"] then M.Assertstring(struct["licenseUrl"]) end
	if struct["versionCode"] then M.Assertstring(struct["versionCode"]) end
	if struct["blueprintId"] then M.AssertNonEmptyString(struct["blueprintId"]) end
	if struct["minPower"] then M.Assertinteger(struct["minPower"]) end
	if struct["type"] then M.AssertBlueprintType(struct["type"]) end
	if struct["isActive"] then M.Assertboolean(struct["isActive"]) end
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Blueprint_keys[k], "Blueprint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Blueprint
-- <p>Describes a blueprint (a virtual private server image).</p>
-- @param group [NonEmptyString] <p>The group name of the blueprint (e.g., <code>amazon-linux</code>).</p>
-- @param description [string] <p>The description of the blueprint.</p>
-- @param productUrl [string] <p>The product URL to learn more about the image or blueprint.</p>
-- @param version [string] <p>The version number of the operating system, application, or stack (e.g., <code>2016.03.0</code>).</p>
-- @param licenseUrl [string] <p>The end-user license agreement URL for the image or blueprint.</p>
-- @param versionCode [string] <p>The version code.</p>
-- @param blueprintId [NonEmptyString] <p>The ID for the virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>).</p>
-- @param minPower [integer] <p>The minimum machine size required to run this blueprint. <code>0</code> indicates that the blueprint runs on all instances.</p>
-- @param type [BlueprintType] <p>The type of the blueprint (e.g., <code>os</code> or <code>app</code>).</p>
-- @param isActive [boolean] <p>A Boolean value indicating whether the blueprint is active. When you update your blueprints, you will inactivate old blueprints and keep the most recent versions active.</p>
-- @param name [ResourceName] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
function M.Blueprint(group, description, productUrl, version, licenseUrl, versionCode, blueprintId, minPower, type, isActive, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Blueprint")
	local t = { 
		["group"] = group,
		["description"] = description,
		["productUrl"] = productUrl,
		["version"] = version,
		["licenseUrl"] = licenseUrl,
		["versionCode"] = versionCode,
		["blueprintId"] = blueprintId,
		["minPower"] = minPower,
		["type"] = type,
		["isActive"] = isActive,
		["name"] = name,
	}
	M.AssertBlueprint(t)
	return t
end

local GetInstancesRequest_keys = { "pageToken" = true, nil }

function M.AssertGetInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancesRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetInstancesRequest_keys[k], "GetInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancesRequest
--  
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get instances request.</p>
function M.GetInstancesRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancesRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetInstancesRequest(t)
	return t
end

local ResourceLocation_keys = { "availabilityZone" = true, "regionName" = true, nil }

function M.AssertResourceLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLocation to be of type 'table'")
	if struct["availabilityZone"] then M.Assertstring(struct["availabilityZone"]) end
	if struct["regionName"] then M.AssertRegionName(struct["regionName"]) end
	for k,_ in pairs(struct) do
		assert(ResourceLocation_keys[k], "ResourceLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLocation
-- <p>Describes the resource location.</p>
-- @param availabilityZone [string] <p>The Availability Zone. Follows the format <code>us-east-1a</code> (case-sensitive).</p>
-- @param regionName [RegionName] <p>The AWS Region name.</p>
function M.ResourceLocation(availabilityZone, regionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceLocation")
	local t = { 
		["availabilityZone"] = availabilityZone,
		["regionName"] = regionName,
	}
	M.AssertResourceLocation(t)
	return t
end

local CreateDomainRequest_keys = { "domainName" = true, nil }

function M.AssertCreateDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainRequest_keys[k], "CreateDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainRequest
--  
-- @param domainName [DomainName] <p>The domain name to manage (e.g., <code>example.com</code>).</p> <note> <p>You cannot register a new domain name using Lightsail. You must register a domain name using Amazon Route 53 or another domain name registrar. If you have already registered your domain, you can enter its name in this parameter to manage the DNS records for that domain.</p> </note>
-- Required parameter: domainName
function M.CreateDomainRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertCreateDomainRequest(t)
	return t
end

local Bundle_keys = { "name" = true, "power" = true, "price" = true, "ramSizeInGb" = true, "diskSizeInGb" = true, "transferPerMonthInGb" = true, "cpuCount" = true, "instanceType" = true, "isActive" = true, "bundleId" = true, nil }

function M.AssertBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bundle to be of type 'table'")
	if struct["name"] then M.Assertstring(struct["name"]) end
	if struct["power"] then M.Assertinteger(struct["power"]) end
	if struct["price"] then M.Assertfloat(struct["price"]) end
	if struct["ramSizeInGb"] then M.Assertfloat(struct["ramSizeInGb"]) end
	if struct["diskSizeInGb"] then M.Assertinteger(struct["diskSizeInGb"]) end
	if struct["transferPerMonthInGb"] then M.Assertinteger(struct["transferPerMonthInGb"]) end
	if struct["cpuCount"] then M.Assertinteger(struct["cpuCount"]) end
	if struct["instanceType"] then M.Assertstring(struct["instanceType"]) end
	if struct["isActive"] then M.Assertboolean(struct["isActive"]) end
	if struct["bundleId"] then M.AssertNonEmptyString(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(Bundle_keys[k], "Bundle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Bundle
-- <p>Describes a bundle, which is a set of specs describing your virtual private server (or <i>instance</i>).</p>
-- @param name [string] <p>A friendly name for the bundle (e.g., <code>Micro</code>).</p>
-- @param power [integer] <p>The power of the bundle (e.g., <code>500</code>).</p>
-- @param price [float] <p>The price in US dollars (e.g., <code>5.0</code>).</p>
-- @param ramSizeInGb [float] <p>The amount of RAM in GB (e.g., <code>2.0</code>).</p>
-- @param diskSizeInGb [integer] <p>The size of the SSD (e.g., <code>30</code>).</p>
-- @param transferPerMonthInGb [integer] <p>The data transfer rate per month in GB (e.g., <code>2000</code>).</p>
-- @param cpuCount [integer] <p>The number of vCPUs included in the bundle (e.g., <code>2</code>).</p>
-- @param instanceType [string] <p>The Amazon EC2 instance type (e.g., <code>t2.micro</code>).</p>
-- @param isActive [boolean] <p>A Boolean value indicating whether the bundle is active.</p>
-- @param bundleId [NonEmptyString] <p>The bundle ID (e.g., <code>micro_1_0</code>).</p>
function M.Bundle(name, power, price, ramSizeInGb, diskSizeInGb, transferPerMonthInGb, cpuCount, instanceType, isActive, bundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Bundle")
	local t = { 
		["name"] = name,
		["power"] = power,
		["price"] = price,
		["ramSizeInGb"] = ramSizeInGb,
		["diskSizeInGb"] = diskSizeInGb,
		["transferPerMonthInGb"] = transferPerMonthInGb,
		["cpuCount"] = cpuCount,
		["instanceType"] = instanceType,
		["isActive"] = isActive,
		["bundleId"] = bundleId,
	}
	M.AssertBundle(t)
	return t
end

local DeleteInstanceResult_keys = { "operations" = true, nil }

function M.AssertDeleteInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInstanceResult_keys[k], "DeleteInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your delete instance request.</p>
function M.DeleteInstanceResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertDeleteInstanceResult(t)
	return t
end

local InvalidInputException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInputException_keys[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p> <note> <p>Domain-related APIs are only available in the N. Virginia (us-east-1) Region. Please set your Region configuration to us-east-1 to create, view, or edit these resources.</p> </note>
-- @param docs [string] <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p> <note> <p>Domain-related APIs are only available in the N. Virginia (us-east-1) Region. Please set your Region configuration to us-east-1 to create, view, or edit these resources.</p> </note>
-- @param message [string] <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p> <note> <p>Domain-related APIs are only available in the N. Virginia (us-east-1) Region. Please set your Region configuration to us-east-1 to create, view, or edit these resources.</p> </note>
-- @param code [string] <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p> <note> <p>Domain-related APIs are only available in the N. Virginia (us-east-1) Region. Please set your Region configuration to us-east-1 to create, view, or edit these resources.</p> </note>
-- @param tip [string] <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p> <note> <p>Domain-related APIs are only available in the N. Virginia (us-east-1) Region. Please set your Region configuration to us-east-1 to create, view, or edit these resources.</p> </note>
function M.InvalidInputException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertInvalidInputException(t)
	return t
end

local AccountSetupInProgressException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertAccountSetupInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountSetupInProgressException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(AccountSetupInProgressException_keys[k], "AccountSetupInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountSetupInProgressException
-- <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
-- @param docs [string] <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
-- @param message [string] <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
-- @param code [string] <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
-- @param tip [string] <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
function M.AccountSetupInProgressException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountSetupInProgressException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertAccountSetupInProgressException(t)
	return t
end

local DeleteDomainEntryResult_keys = { "operation" = true, nil }

function M.AssertDeleteDomainEntryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainEntryResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainEntryResult_keys[k], "DeleteDomainEntryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainEntryResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the results of your delete domain entry request.</p>
function M.DeleteDomainEntryResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainEntryResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertDeleteDomainEntryResult(t)
	return t
end

local CreateKeyPairRequest_keys = { "keyPairName" = true, nil }

function M.AssertCreateKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	if struct["keyPairName"] then M.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(CreateKeyPairRequest_keys[k], "CreateKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyPairRequest
--  
-- @param keyPairName [ResourceName] <p>The name for your new key pair.</p>
-- Required parameter: keyPairName
function M.CreateKeyPairRequest(keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyPairRequest")
	local t = { 
		["keyPairName"] = keyPairName,
	}
	M.AssertCreateKeyPairRequest(t)
	return t
end

local DeleteDomainEntryRequest_keys = { "domainEntry" = true, "domainName" = true, nil }

function M.AssertDeleteDomainEntryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainEntryRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["domainEntry"], "Expected key domainEntry to exist in table")
	if struct["domainEntry"] then M.AssertDomainEntry(struct["domainEntry"]) end
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainEntryRequest_keys[k], "DeleteDomainEntryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainEntryRequest
--  
-- @param domainEntry [DomainEntry] <p>An array of key-value pairs containing information about your domain entries.</p>
-- @param domainName [DomainName] <p>The name of the domain entry to delete.</p>
-- Required parameter: domainName
-- Required parameter: domainEntry
function M.DeleteDomainEntryRequest(domainEntry, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainEntryRequest")
	local t = { 
		["domainEntry"] = domainEntry,
		["domainName"] = domainName,
	}
	M.AssertDeleteDomainEntryRequest(t)
	return t
end

local DomainEntry_keys = { "type" = true, "options" = true, "target" = true, "id" = true, "name" = true, nil }

function M.AssertDomainEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainEntry to be of type 'table'")
	if struct["type"] then M.AssertDomainEntryType(struct["type"]) end
	if struct["options"] then M.AssertDomainEntryOptions(struct["options"]) end
	if struct["target"] then M.Assertstring(struct["target"]) end
	if struct["id"] then M.AssertNonEmptyString(struct["id"]) end
	if struct["name"] then M.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DomainEntry_keys[k], "DomainEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainEntry
-- <p>Describes a domain recordset entry.</p>
-- @param type [DomainEntryType] <p>The type of domain entry (e.g., <code>SOA</code> or <code>NS</code>).</p>
-- @param options [DomainEntryOptions] <p>The options for the domain entry.</p>
-- @param target [string] <p>The target AWS name server (e.g., <code>ns-111.awsdns-22.com.</code>).</p>
-- @param id [NonEmptyString] <p>The ID of the domain recordset entry.</p>
-- @param name [DomainName] <p>The name of the domain.</p>
function M.DomainEntry(type, options, target, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainEntry")
	local t = { 
		["type"] = type,
		["options"] = options,
		["target"] = target,
		["id"] = id,
		["name"] = name,
	}
	M.AssertDomainEntry(t)
	return t
end

local GetStaticIpRequest_keys = { "staticIpName" = true, nil }

function M.AssertGetStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then M.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(GetStaticIpRequest_keys[k], "GetStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpRequest
--  
-- @param staticIpName [ResourceName] <p>The name of the static IP in Lightsail.</p>
-- Required parameter: staticIpName
function M.GetStaticIpRequest(staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpRequest")
	local t = { 
		["staticIpName"] = staticIpName,
	}
	M.AssertGetStaticIpRequest(t)
	return t
end

local DownloadDefaultKeyPairResult_keys = { "publicKeyBase64" = true, "privateKeyBase64" = true, nil }

function M.AssertDownloadDefaultKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDefaultKeyPairResult to be of type 'table'")
	if struct["publicKeyBase64"] then M.AssertBase64(struct["publicKeyBase64"]) end
	if struct["privateKeyBase64"] then M.AssertBase64(struct["privateKeyBase64"]) end
	for k,_ in pairs(struct) do
		assert(DownloadDefaultKeyPairResult_keys[k], "DownloadDefaultKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDefaultKeyPairResult
--  
-- @param publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- @param privateKeyBase64 [Base64] <p>A base64-encoded RSA private key.</p>
function M.DownloadDefaultKeyPairResult(publicKeyBase64, privateKeyBase64, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDefaultKeyPairResult")
	local t = { 
		["publicKeyBase64"] = publicKeyBase64,
		["privateKeyBase64"] = privateKeyBase64,
	}
	M.AssertDownloadDefaultKeyPairResult(t)
	return t
end

local CreateInstancesFromSnapshotResult_keys = { "operations" = true, nil }

function M.AssertCreateInstancesFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesFromSnapshotResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstancesFromSnapshotResult_keys[k], "CreateInstancesFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesFromSnapshotResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances from snapshot request.</p>
function M.CreateInstancesFromSnapshotResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesFromSnapshotResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertCreateInstancesFromSnapshotResult(t)
	return t
end

local DownloadDefaultKeyPairRequest_keys = { nil }

function M.AssertDownloadDefaultKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDefaultKeyPairRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DownloadDefaultKeyPairRequest_keys[k], "DownloadDefaultKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDefaultKeyPairRequest
--  
function M.DownloadDefaultKeyPairRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDefaultKeyPairRequest")
	local t = { 
	}
	M.AssertDownloadDefaultKeyPairRequest(t)
	return t
end

local IsVpcPeeredResult_keys = { "isPeered" = true, nil }

function M.AssertIsVpcPeeredResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IsVpcPeeredResult to be of type 'table'")
	if struct["isPeered"] then M.Assertboolean(struct["isPeered"]) end
	for k,_ in pairs(struct) do
		assert(IsVpcPeeredResult_keys[k], "IsVpcPeeredResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IsVpcPeeredResult
--  
-- @param isPeered [boolean] <p>Returns <code>true</code> if the Lightsail VPC is peered; otherwise, <code>false</code>.</p>
function M.IsVpcPeeredResult(isPeered, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IsVpcPeeredResult")
	local t = { 
		["isPeered"] = isPeered,
	}
	M.AssertIsVpcPeeredResult(t)
	return t
end

local StaticIp_keys = { "name" = true, "resourceType" = true, "supportCode" = true, "attachedTo" = true, "arn" = true, "isAttached" = true, "ipAddress" = true, "createdAt" = true, "location" = true, nil }

function M.AssertStaticIp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaticIp to be of type 'table'")
	if struct["name"] then M.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then M.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then M.Assertstring(struct["supportCode"]) end
	if struct["attachedTo"] then M.AssertResourceName(struct["attachedTo"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	if struct["isAttached"] then M.Assertboolean(struct["isAttached"]) end
	if struct["ipAddress"] then M.AssertIpAddress(struct["ipAddress"]) end
	if struct["createdAt"] then M.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then M.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(StaticIp_keys[k], "StaticIp contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaticIp
-- <p>Describes the static IP.</p>
-- @param name [ResourceName] <p>The name of the static IP (e.g., <code>StaticIP-Virginia-EXAMPLE</code>).</p>
-- @param resourceType [ResourceType] <p>The resource type (usually <code>StaticIp</code>).</p>
-- @param supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param attachedTo [ResourceName] <p>The instance where the static IP is attached (e.g., <code>Amazon_Linux-1GB-Virginia-1</code>).</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the static IP (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE</code>).</p>
-- @param isAttached [boolean] <p>A Boolean value indicating whether the static IP is attached.</p>
-- @param ipAddress [IpAddress] <p>The static IP address.</p>
-- @param createdAt [IsoDate] <p>The timestamp when the static IP was created (e.g., <code>1479735304.222</code>).</p>
-- @param location [ResourceLocation] <p>The region and Availability Zone where the static IP was created.</p>
function M.StaticIp(name, resourceType, supportCode, attachedTo, arn, isAttached, ipAddress, createdAt, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StaticIp")
	local t = { 
		["name"] = name,
		["resourceType"] = resourceType,
		["supportCode"] = supportCode,
		["attachedTo"] = attachedTo,
		["arn"] = arn,
		["isAttached"] = isAttached,
		["ipAddress"] = ipAddress,
		["createdAt"] = createdAt,
		["location"] = location,
	}
	M.AssertStaticIp(t)
	return t
end

local DeleteInstanceRequest_keys = { "instanceName" = true, nil }

function M.AssertDeleteInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInstanceRequest_keys[k], "DeleteInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance to delete.</p>
-- Required parameter: instanceName
function M.DeleteInstanceRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertDeleteInstanceRequest(t)
	return t
end

local GetInstancePortStatesRequest_keys = { "instanceName" = true, nil }

function M.AssertGetInstancePortStatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancePortStatesRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstancePortStatesRequest_keys[k], "GetInstancePortStatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancePortStatesRequest
--  
-- @param instanceName [ResourceName] <p>The name of the instance.</p>
-- Required parameter: instanceName
function M.GetInstancePortStatesRequest(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancePortStatesRequest")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertGetInstancePortStatesRequest(t)
	return t
end

local CloseInstancePublicPortsResult_keys = { "operation" = true, nil }

function M.AssertCloseInstancePublicPortsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloseInstancePublicPortsResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(CloseInstancePublicPortsResult_keys[k], "CloseInstancePublicPortsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloseInstancePublicPortsResult
--  
-- @param operation [Operation] <p>An array of key-value pairs that contains information about the operation.</p>
function M.CloseInstancePublicPortsResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloseInstancePublicPortsResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertCloseInstancePublicPortsResult(t)
	return t
end

local GetInstanceAccessDetailsRequest_keys = { "protocol" = true, "instanceName" = true, nil }

function M.AssertGetInstanceAccessDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessDetailsRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["protocol"] then M.AssertInstanceAccessProtocol(struct["protocol"]) end
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceAccessDetailsRequest_keys[k], "GetInstanceAccessDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessDetailsRequest
--  
-- @param protocol [InstanceAccessProtocol] <p>The protocol to use to connect to your instance. Defaults to <code>ssh</code>.</p>
-- @param instanceName [ResourceName] <p>The name of the instance to access.</p>
-- Required parameter: instanceName
function M.GetInstanceAccessDetailsRequest(protocol, instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessDetailsRequest")
	local t = { 
		["protocol"] = protocol,
		["instanceName"] = instanceName,
	}
	M.AssertGetInstanceAccessDetailsRequest(t)
	return t
end

local GetInstanceSnapshotResult_keys = { "instanceSnapshot" = true, nil }

function M.AssertGetInstanceSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotResult to be of type 'table'")
	if struct["instanceSnapshot"] then M.AssertInstanceSnapshot(struct["instanceSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceSnapshotResult_keys[k], "GetInstanceSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotResult
--  
-- @param instanceSnapshot [InstanceSnapshot] <p>An array of key-value pairs containing information about the results of your get instance snapshot request.</p>
function M.GetInstanceSnapshotResult(instanceSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotResult")
	local t = { 
		["instanceSnapshot"] = instanceSnapshot,
	}
	M.AssertGetInstanceSnapshotResult(t)
	return t
end

local GetOperationsRequest_keys = { "pageToken" = true, nil }

function M.AssertGetOperationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationsRequest_keys[k], "GetOperationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsRequest
--  
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get operations request.</p>
function M.GetOperationsRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetOperationsRequest(t)
	return t
end

local GetBundlesResult_keys = { "nextPageToken" = true, "bundles" = true, nil }

function M.AssertGetBundlesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBundlesResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["bundles"] then M.AssertBundleList(struct["bundles"]) end
	for k,_ in pairs(struct) do
		assert(GetBundlesResult_keys[k], "GetBundlesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBundlesResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- @param bundles [BundleList] <p>An array of key-value pairs that contains information about the available bundles.</p>
function M.GetBundlesResult(nextPageToken, bundles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBundlesResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["bundles"] = bundles,
	}
	M.AssertGetBundlesResult(t)
	return t
end

local InstanceNetworking_keys = { "monthlyTransfer" = true, "ports" = true, nil }

function M.AssertInstanceNetworking(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNetworking to be of type 'table'")
	if struct["monthlyTransfer"] then M.AssertMonthlyTransfer(struct["monthlyTransfer"]) end
	if struct["ports"] then M.AssertInstancePortInfoList(struct["ports"]) end
	for k,_ in pairs(struct) do
		assert(InstanceNetworking_keys[k], "InstanceNetworking contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNetworking
-- <p>Describes monthly data transfer rates and port information for an instance.</p>
-- @param monthlyTransfer [MonthlyTransfer] <p>The amount of data in GB allocated for monthly data transfers.</p>
-- @param ports [InstancePortInfoList] <p>An array of key-value pairs containing information about the ports on the instance.</p>
function M.InstanceNetworking(monthlyTransfer, ports, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNetworking")
	local t = { 
		["monthlyTransfer"] = monthlyTransfer,
		["ports"] = ports,
	}
	M.AssertInstanceNetworking(t)
	return t
end

local UpdateDomainEntryResult_keys = { "operations" = true, nil }

function M.AssertUpdateDomainEntryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainEntryResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainEntryResult_keys[k], "UpdateDomainEntryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainEntryResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.UpdateDomainEntryResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainEntryResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertUpdateDomainEntryResult(t)
	return t
end

local ServiceException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(ServiceException_keys[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>A general service exception.</p>
-- @param docs [string] <p>A general service exception.</p>
-- @param message [string] <p>A general service exception.</p>
-- @param code [string] <p>A general service exception.</p>
-- @param tip [string] <p>A general service exception.</p>
function M.ServiceException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertServiceException(t)
	return t
end

local DeleteKeyPairResult_keys = { "operation" = true, nil }

function M.AssertDeleteKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteKeyPairResult to be of type 'table'")
	if struct["operation"] then M.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(DeleteKeyPairResult_keys[k], "DeleteKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteKeyPairResult
--  
-- @param operation [Operation] <p>An array of key-value pairs containing information about the results of your delete key pair request.</p>
function M.DeleteKeyPairResult(operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteKeyPairResult")
	local t = { 
		["operation"] = operation,
	}
	M.AssertDeleteKeyPairResult(t)
	return t
end

local DeleteInstanceSnapshotResult_keys = { "operations" = true, nil }

function M.AssertDeleteInstanceSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceSnapshotResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInstanceSnapshotResult_keys[k], "DeleteInstanceSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceSnapshotResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the results of your delete instance snapshot request.</p>
function M.DeleteInstanceSnapshotResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceSnapshotResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertDeleteInstanceSnapshotResult(t)
	return t
end

local GetDomainsResult_keys = { "domains" = true, "nextPageToken" = true, nil }

function M.AssertGetDomainsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainsResult to be of type 'table'")
	if struct["domains"] then M.AssertDomainList(struct["domains"]) end
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainsResult_keys[k], "GetDomainsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainsResult
--  
-- @param domains [DomainList] <p>An array of key-value pairs containing information about each of the domain entries in the user's account.</p>
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
function M.GetDomainsResult(domains, nextPageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainsResult")
	local t = { 
		["domains"] = domains,
		["nextPageToken"] = nextPageToken,
	}
	M.AssertGetDomainsResult(t)
	return t
end

local GetRegionsRequest_keys = { "includeAvailabilityZones" = true, nil }

function M.AssertGetRegionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegionsRequest to be of type 'table'")
	if struct["includeAvailabilityZones"] then M.Assertboolean(struct["includeAvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(GetRegionsRequest_keys[k], "GetRegionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegionsRequest
--  
-- @param includeAvailabilityZones [boolean] <p>A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., <code>us-east-1a</code>.</p>
function M.GetRegionsRequest(includeAvailabilityZones, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegionsRequest")
	local t = { 
		["includeAvailabilityZones"] = includeAvailabilityZones,
	}
	M.AssertGetRegionsRequest(t)
	return t
end

local GetActiveNamesResult_keys = { "nextPageToken" = true, "activeNames" = true, nil }

function M.AssertGetActiveNamesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActiveNamesResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["activeNames"] then M.AssertStringList(struct["activeNames"]) end
	for k,_ in pairs(struct) do
		assert(GetActiveNamesResult_keys[k], "GetActiveNamesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActiveNamesResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- @param activeNames [StringList] <p>The list of active names returned by the get active names request.</p>
function M.GetActiveNamesResult(nextPageToken, activeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActiveNamesResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["activeNames"] = activeNames,
	}
	M.AssertGetActiveNamesResult(t)
	return t
end

local AllocateStaticIpRequest_keys = { "staticIpName" = true, nil }

function M.AssertAllocateStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then M.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(AllocateStaticIpRequest_keys[k], "AllocateStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateStaticIpRequest
--  
-- @param staticIpName [ResourceName] <p>The name of the static IP address.</p>
-- Required parameter: staticIpName
function M.AllocateStaticIpRequest(staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateStaticIpRequest")
	local t = { 
		["staticIpName"] = staticIpName,
	}
	M.AssertAllocateStaticIpRequest(t)
	return t
end

local AllocateStaticIpResult_keys = { "operations" = true, nil }

function M.AssertAllocateStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateStaticIpResult to be of type 'table'")
	if struct["operations"] then M.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(AllocateStaticIpResult_keys[k], "AllocateStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateStaticIpResult
--  
-- @param operations [OperationList] <p>An array of key-value pairs containing information about the static IP address you allocated.</p>
function M.AllocateStaticIpResult(operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateStaticIpResult")
	local t = { 
		["operations"] = operations,
	}
	M.AssertAllocateStaticIpResult(t)
	return t
end

local GetBlueprintsRequest_keys = { "includeInactive" = true, "pageToken" = true, nil }

function M.AssertGetBlueprintsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlueprintsRequest to be of type 'table'")
	if struct["includeInactive"] then M.Assertboolean(struct["includeInactive"]) end
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetBlueprintsRequest_keys[k], "GetBlueprintsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlueprintsRequest
--  
-- @param includeInactive [boolean] <p>A Boolean value indicating whether to include inactive results in your request.</p>
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get blueprints request.</p>
function M.GetBlueprintsRequest(includeInactive, pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBlueprintsRequest")
	local t = { 
		["includeInactive"] = includeInactive,
		["pageToken"] = pageToken,
	}
	M.AssertGetBlueprintsRequest(t)
	return t
end

local GetInstanceSnapshotsResult_keys = { "nextPageToken" = true, "instanceSnapshots" = true, nil }

function M.AssertGetInstanceSnapshotsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotsResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["instanceSnapshots"] then M.AssertInstanceSnapshotList(struct["instanceSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceSnapshotsResult_keys[k], "GetInstanceSnapshotsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotsResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get instance snapshots request.</p>
-- @param instanceSnapshots [InstanceSnapshotList] <p>An array of key-value pairs containing information about the results of your get instance snapshots request.</p>
function M.GetInstanceSnapshotsResult(nextPageToken, instanceSnapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotsResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["instanceSnapshots"] = instanceSnapshots,
	}
	M.AssertGetInstanceSnapshotsResult(t)
	return t
end

local AccessDeniedException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
-- @param docs [string] <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
-- @param message [string] <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
-- @param code [string] <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
-- @param tip [string] <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
function M.AccessDeniedException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertAccessDeniedException(t)
	return t
end

local InstancePortState_keys = { "toPort" = true, "fromPort" = true, "state" = true, "protocol" = true, nil }

function M.AssertInstancePortState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePortState to be of type 'table'")
	if struct["toPort"] then M.AssertPort(struct["toPort"]) end
	if struct["fromPort"] then M.AssertPort(struct["fromPort"]) end
	if struct["state"] then M.AssertPortState(struct["state"]) end
	if struct["protocol"] then M.AssertNetworkProtocol(struct["protocol"]) end
	for k,_ in pairs(struct) do
		assert(InstancePortState_keys[k], "InstancePortState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePortState
-- <p>Describes the port state.</p>
-- @param toPort [Port] <p>The last port in the range.</p>
-- @param fromPort [Port] <p>The first port in the range.</p>
-- @param state [PortState] <p>Specifies whether the instance port is <code>open</code> or <code>closed</code>.</p>
-- @param protocol [NetworkProtocol] <p>The protocol being used. Can be one of the following.</p> <ul> <li> <p> <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and error-checked delivery of streamed data between applications running on hosts communicating by an IP network. If you have an application that doesn't require reliable data stream service, use UDP instead.</p> </li> <li> <p> <code>all</code> - All transport layer protocol types. For more general information, see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on Wikipedia.</p> </li> <li> <p> <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior communications are not required to set up transmission channels or data paths. Applications that don't require reliable data stream service can use UDP, which provides a connectionless datagram service that emphasizes reduced latency over reliability. If you do require reliable data stream service, use TCP instead.</p> </li> </ul>
function M.InstancePortState(toPort, fromPort, state, protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancePortState")
	local t = { 
		["toPort"] = toPort,
		["fromPort"] = fromPort,
		["state"] = state,
		["protocol"] = protocol,
	}
	M.AssertInstancePortState(t)
	return t
end

local GetStaticIpsRequest_keys = { "pageToken" = true, nil }

function M.AssertGetStaticIpsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpsRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetStaticIpsRequest_keys[k], "GetStaticIpsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpsRequest
--  
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
function M.GetStaticIpsRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpsRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetStaticIpsRequest(t)
	return t
end

local OperationFailureException_keys = { "docs" = true, "message" = true, "code" = true, "tip" = true, nil }

function M.AssertOperationFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationFailureException to be of type 'table'")
	if struct["docs"] then M.Assertstring(struct["docs"]) end
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["tip"] then M.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(OperationFailureException_keys[k], "OperationFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationFailureException
-- <p>Lightsail throws this exception when an operation fails to execute.</p>
-- @param docs [string] <p>Lightsail throws this exception when an operation fails to execute.</p>
-- @param message [string] <p>Lightsail throws this exception when an operation fails to execute.</p>
-- @param code [string] <p>Lightsail throws this exception when an operation fails to execute.</p>
-- @param tip [string] <p>Lightsail throws this exception when an operation fails to execute.</p>
function M.OperationFailureException(docs, message, code, tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationFailureException")
	local t = { 
		["docs"] = docs,
		["message"] = message,
		["code"] = code,
		["tip"] = tip,
	}
	M.AssertOperationFailureException(t)
	return t
end

local GetKeyPairsResult_keys = { "nextPageToken" = true, "keyPairs" = true, nil }

function M.AssertGetKeyPairsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairsResult to be of type 'table'")
	if struct["nextPageToken"] then M.Assertstring(struct["nextPageToken"]) end
	if struct["keyPairs"] then M.AssertKeyPairList(struct["keyPairs"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyPairsResult_keys[k], "GetKeyPairsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairsResult
--  
-- @param nextPageToken [string] <p>A token used for advancing to the next page of results from your get key pairs request.</p>
-- @param keyPairs [KeyPairList] <p>An array of key-value pairs containing information about the key pairs.</p>
function M.GetKeyPairsResult(nextPageToken, keyPairs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairsResult")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["keyPairs"] = keyPairs,
	}
	M.AssertGetKeyPairsResult(t)
	return t
end

local GetInstanceMetricDataResult_keys = { "metricData" = true, "metricName" = true, nil }

function M.AssertGetInstanceMetricDataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceMetricDataResult to be of type 'table'")
	if struct["metricData"] then M.AssertMetricDatapointList(struct["metricData"]) end
	if struct["metricName"] then M.AssertInstanceMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceMetricDataResult_keys[k], "GetInstanceMetricDataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceMetricDataResult
--  
-- @param metricData [MetricDatapointList] <p>An array of key-value pairs containing information about the results of your get instance metric data request.</p>
-- @param metricName [InstanceMetricName] <p>The metric name to return data for. </p>
function M.GetInstanceMetricDataResult(metricData, metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceMetricDataResult")
	local t = { 
		["metricData"] = metricData,
		["metricName"] = metricName,
	}
	M.AssertGetInstanceMetricDataResult(t)
	return t
end

local GetDomainResult_keys = { "domain" = true, nil }

function M.AssertGetDomainResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainResult to be of type 'table'")
	if struct["domain"] then M.AssertDomain(struct["domain"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainResult_keys[k], "GetDomainResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainResult
--  
-- @param domain [Domain] <p>An array of key-value pairs containing information about your get domain request.</p>
function M.GetDomainResult(domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainResult")
	local t = { 
		["domain"] = domain,
	}
	M.AssertGetDomainResult(t)
	return t
end

local GetInstanceStateResult_keys = { "state" = true, nil }

function M.AssertGetInstanceStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceStateResult to be of type 'table'")
	if struct["state"] then M.AssertInstanceState(struct["state"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceStateResult_keys[k], "GetInstanceStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceStateResult
--  
-- @param state [InstanceState] <p>The state of the instance.</p>
function M.GetInstanceStateResult(state, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceStateResult")
	local t = { 
		["state"] = state,
	}
	M.AssertGetInstanceStateResult(t)
	return t
end

local AttachStaticIpRequest_keys = { "staticIpName" = true, "instanceName" = true, nil }

function M.AssertAttachStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["staticIpName"] then M.AssertResourceName(struct["staticIpName"]) end
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(AttachStaticIpRequest_keys[k], "AttachStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachStaticIpRequest
--  
-- @param staticIpName [ResourceName] <p>The name of the static IP.</p>
-- @param instanceName [ResourceName] <p>The instance name to which you want to attach the static IP address.</p>
-- Required parameter: staticIpName
-- Required parameter: instanceName
function M.AttachStaticIpRequest(staticIpName, instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachStaticIpRequest")
	local t = { 
		["staticIpName"] = staticIpName,
		["instanceName"] = instanceName,
	}
	M.AssertAttachStaticIpRequest(t)
	return t
end

local CreateInstancesFromSnapshotRequest_keys = { "userData" = true, "availabilityZone" = true, "instanceNames" = true, "instanceSnapshotName" = true, "bundleId" = true, "keyPairName" = true, nil }

function M.AssertCreateInstancesFromSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesFromSnapshotRequest to be of type 'table'")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	assert(struct["availabilityZone"], "Expected key availabilityZone to exist in table")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	assert(struct["bundleId"], "Expected key bundleId to exist in table")
	if struct["userData"] then M.Assertstring(struct["userData"]) end
	if struct["availabilityZone"] then M.Assertstring(struct["availabilityZone"]) end
	if struct["instanceNames"] then M.AssertStringList(struct["instanceNames"]) end
	if struct["instanceSnapshotName"] then M.AssertResourceName(struct["instanceSnapshotName"]) end
	if struct["bundleId"] then M.AssertNonEmptyString(struct["bundleId"]) end
	if struct["keyPairName"] then M.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstancesFromSnapshotRequest_keys[k], "CreateInstancesFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesFromSnapshotRequest
--  
-- @param userData [string] <p>You can create a launch script that configures a server with additional user data. For example, <code>apt-get –y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps">Dev Guide</a>.</p> </note>
-- @param availabilityZone [string] <p>The Availability Zone where you want to create your instances. Use the following formatting: <code>us-east-1a</code> (case sensitive). You can get a list of availability zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include availability zones</code> parameter to your request.</p>
-- @param instanceNames [StringList] <p>The names for your new instances.</p>
-- @param instanceSnapshotName [ResourceName] <p>The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots.</p>
-- @param bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
-- @param keyPairName [ResourceName] <p>The name for your key pair.</p>
-- Required parameter: instanceNames
-- Required parameter: availabilityZone
-- Required parameter: instanceSnapshotName
-- Required parameter: bundleId
function M.CreateInstancesFromSnapshotRequest(userData, availabilityZone, instanceNames, instanceSnapshotName, bundleId, keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesFromSnapshotRequest")
	local t = { 
		["userData"] = userData,
		["availabilityZone"] = availabilityZone,
		["instanceNames"] = instanceNames,
		["instanceSnapshotName"] = instanceSnapshotName,
		["bundleId"] = bundleId,
		["keyPairName"] = keyPairName,
	}
	M.AssertCreateInstancesFromSnapshotRequest(t)
	return t
end

local GetDomainsRequest_keys = { "pageToken" = true, nil }

function M.AssertGetDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainsRequest to be of type 'table'")
	if struct["pageToken"] then M.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainsRequest_keys[k], "GetDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainsRequest
--  
-- @param pageToken [string] <p>A token used for advancing to the next page of results from your get domains request.</p>
function M.GetDomainsRequest(pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainsRequest")
	local t = { 
		["pageToken"] = pageToken,
	}
	M.AssertGetDomainsRequest(t)
	return t
end

local CreateInstanceSnapshotRequest_keys = { "instanceName" = true, "instanceSnapshotName" = true, nil }

function M.AssertCreateInstanceSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceSnapshotRequest to be of type 'table'")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertResourceName(struct["instanceName"]) end
	if struct["instanceSnapshotName"] then M.AssertResourceName(struct["instanceSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstanceSnapshotRequest_keys[k], "CreateInstanceSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceSnapshotRequest
--  
-- @param instanceName [ResourceName] <p>The Lightsail instance on which to base your snapshot.</p>
-- @param instanceSnapshotName [ResourceName] <p>The name for your new snapshot.</p>
-- Required parameter: instanceSnapshotName
-- Required parameter: instanceName
function M.CreateInstanceSnapshotRequest(instanceName, instanceSnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceSnapshotRequest")
	local t = { 
		["instanceName"] = instanceName,
		["instanceSnapshotName"] = instanceSnapshotName,
	}
	M.AssertCreateInstanceSnapshotRequest(t)
	return t
end

function M.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	M.AssertResourceType(str)
	return str
end

function M.AssertDomainEntryType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainEntryType to be of type 'string'")
end

--  
function M.DomainEntryType(str)
	M.AssertDomainEntryType(str)
	return str
end

function M.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(str:match("%w[%w%-]*%w"), "Expected string to match pattern '%w[%w%-]*%w'")
end

--  
function M.ResourceName(str)
	M.AssertResourceName(str)
	return str
end

function M.AssertRegionName(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionName to be of type 'string'")
end

--  
function M.RegionName(str)
	M.AssertRegionName(str)
	return str
end

function M.AssertInstanceSnapshotState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceSnapshotState to be of type 'string'")
end

--  
function M.InstanceSnapshotState(str)
	M.AssertInstanceSnapshotState(str)
	return str
end

function M.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	M.Assertstring(str)
	return str
end

function M.AssertDomainEntryOptionsKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainEntryOptionsKeys to be of type 'string'")
end

--  
function M.DomainEntryOptionsKeys(str)
	M.AssertDomainEntryOptionsKeys(str)
	return str
end

function M.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
end

--  
function M.DomainName(str)
	M.AssertDomainName(str)
	return str
end

function M.AssertInstanceMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceMetricName to be of type 'string'")
end

--  
function M.InstanceMetricName(str)
	M.AssertInstanceMetricName(str)
	return str
end

function M.AssertPortAccessType(str)
	assert(str)
	assert(type(str) == "string", "Expected PortAccessType to be of type 'string'")
end

--  
function M.PortAccessType(str)
	M.AssertPortAccessType(str)
	return str
end

function M.AssertNetworkProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkProtocol to be of type 'string'")
end

--  
function M.NetworkProtocol(str)
	M.AssertNetworkProtocol(str)
	return str
end

function M.AssertMetricStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricStatistic to be of type 'string'")
end

--  
function M.MetricStatistic(str)
	M.AssertMetricStatistic(str)
	return str
end

function M.AssertIpV6Address(str)
	assert(str)
	assert(type(str) == "string", "Expected IpV6Address to be of type 'string'")
	assert(str:match("([A-F0-9]{1,4}:){7}[A-F0-9]{1,4}"), "Expected string to match pattern '([A-F0-9]{1,4}:){7}[A-F0-9]{1,4}'")
end

--  
function M.IpV6Address(str)
	M.AssertIpV6Address(str)
	return str
end

function M.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	M.AssertOperationType(str)
	return str
end

function M.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(str:match(".*%S.*"), "Expected string to match pattern '.*%S.*'")
end

--  
function M.NonEmptyString(str)
	M.AssertNonEmptyString(str)
	return str
end

function M.AssertAccessDirection(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessDirection to be of type 'string'")
end

--  
function M.AccessDirection(str)
	M.AssertAccessDirection(str)
	return str
end

function M.AssertOperationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationStatus to be of type 'string'")
end

--  
function M.OperationStatus(str)
	M.AssertOperationStatus(str)
	return str
end

function M.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	M.AssertMetricUnit(str)
	return str
end

function M.AssertBlueprintType(str)
	assert(str)
	assert(type(str) == "string", "Expected BlueprintType to be of type 'string'")
end

--  
function M.BlueprintType(str)
	M.AssertBlueprintType(str)
	return str
end

function M.AssertBase64(str)
	assert(str)
	assert(type(str) == "string", "Expected Base64 to be of type 'string'")
end

--  
function M.Base64(str)
	M.AssertBase64(str)
	return str
end

function M.AssertInstanceAccessProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceAccessProtocol to be of type 'string'")
end

--  
function M.InstanceAccessProtocol(str)
	M.AssertInstanceAccessProtocol(str)
	return str
end

function M.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
	assert(str:match("([0-9]{1,3}%.){3}[0-9]{1,3}"), "Expected string to match pattern '([0-9]{1,3}%.){3}[0-9]{1,3}'")
end

--  
function M.IpAddress(str)
	M.AssertIpAddress(str)
	return str
end

function M.AssertPortState(str)
	assert(str)
	assert(type(str) == "string", "Expected PortState to be of type 'string'")
end

--  
function M.PortState(str)
	M.AssertPortState(str)
	return str
end

function M.Assertfloat(float)
	assert(float)
	assert(type(float) == "number", "Expected float to be of type 'number'")
end

function M.float(float)
	M.Assertfloat(float)
	return float
end

function M.Assertdouble(double)
	assert(double)
	assert(type(double) == "number", "Expected double to be of type 'number'")
end

function M.double(double)
	M.Assertdouble(double)
	return double
end

function M.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	M.Assertinteger(integer)
	return integer
end

function M.AssertMetricPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MetricPeriod to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 86400, "Expected integer to be max 86400")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.MetricPeriod(integer)
	M.AssertMetricPeriod(integer)
	return integer
end

function M.AssertPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Port to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
end

function M.Port(integer)
	M.AssertPort(integer)
	return integer
end

function M.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	M.Assertboolean(boolean)
	return boolean
end

function M.AssertDomainEntryOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected DomainEntryOptions to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertDomainEntryOptionsKeys(k)
		M.Assertstring(v)
	end
end

function M.DomainEntryOptions(map)
	M.AssertDomainEntryOptions(map)
	return map
end

function M.AssertIsoDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IsoDate to be of type 'string'")
end

function M.IsoDate(timestamp)
	M.AssertIsoDate(timestamp)
	return timestamp
end

function M.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	M.Asserttimestamp(timestamp)
	return timestamp
end

function M.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	M.AssertInstanceList(list)
	return list
end

function M.AssertBundleList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBundle(v)
	end
end

--  
-- List of Bundle objects
function M.BundleList(list)
	M.AssertBundleList(list)
	return list
end

function M.AssertBlueprintList(list)
	assert(list)
	assert(type(list) == "table", "Expected BlueprintList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBlueprint(v)
	end
end

--  
-- List of Blueprint objects
function M.BlueprintList(list)
	M.AssertBlueprintList(list)
	return list
end

function M.AssertStaticIpList(list)
	assert(list)
	assert(type(list) == "table", "Expected StaticIpList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStaticIp(v)
	end
end

--  
-- List of StaticIp objects
function M.StaticIpList(list)
	M.AssertStaticIpList(list)
	return list
end

function M.AssertMetricStatisticList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricStatisticList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricStatistic(v)
	end
end

--  
-- List of MetricStatistic objects
function M.MetricStatisticList(list)
	M.AssertMetricStatisticList(list)
	return list
end

function M.AssertDiskList(list)
	assert(list)
	assert(type(list) == "table", "Expected DiskList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDisk(v)
	end
end

--  
-- List of Disk objects
function M.DiskList(list)
	M.AssertDiskList(list)
	return list
end

function M.AssertRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected RegionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRegion(v)
	end
end

--  
-- List of Region objects
function M.RegionList(list)
	M.AssertRegionList(list)
	return list
end

function M.AssertMetricDatapointList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDatapointList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricDatapoint(v)
	end
end

--  
-- List of MetricDatapoint objects
function M.MetricDatapointList(list)
	M.AssertMetricDatapointList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertDomainEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainEntry(v)
	end
end

--  
-- List of DomainEntry objects
function M.DomainEntryList(list)
	M.AssertDomainEntryList(list)
	return list
end

function M.AssertInstancePortStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePortStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstancePortState(v)
	end
end

--  
-- List of InstancePortState objects
function M.InstancePortStateList(list)
	M.AssertInstancePortStateList(list)
	return list
end

function M.AssertPortInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected PortInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPortInfo(v)
	end
end

--  
-- List of PortInfo objects
function M.PortInfoList(list)
	M.AssertPortInfoList(list)
	return list
end

function M.AssertOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OperationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOperation(v)
	end
end

--  
-- List of Operation objects
function M.OperationList(list)
	M.AssertOperationList(list)
	return list
end

function M.AssertInstanceSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceSnapshot(v)
	end
end

--  
-- List of InstanceSnapshot objects
function M.InstanceSnapshotList(list)
	M.AssertInstanceSnapshotList(list)
	return list
end

function M.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZoneList(list)
	M.AssertAvailabilityZoneList(list)
	return list
end

function M.AssertDomainList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomain(v)
	end
end

--  
-- List of Domain objects
function M.DomainList(list)
	M.AssertDomainList(list)
	return list
end

function M.AssertKeyPairList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyPairList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertKeyPair(v)
	end
end

--  
-- List of KeyPair objects
function M.KeyPairList(list)
	M.AssertKeyPairList(list)
	return list
end

function M.AssertInstancePortInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePortInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstancePortInfo(v)
	end
end

--  
-- List of InstancePortInfo objects
function M.InstancePortInfoList(list)
	M.AssertInstancePortInfoList(list)
	return list
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "lightsail.amazonaws.com"
		end
	end
	local ss = { "lightsail" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- GetDomain
-- @param GetDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainAsync(GetDomainRequest, cb)
	assert(GetDomainRequest, "You must provide a GetDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetKeyPair
-- @param GetKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyPairAsync(GetKeyPairRequest, cb)
	assert(GetKeyPairRequest, "You must provide a GetKeyPairRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetKeyPairRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceMetricData
-- @param GetInstanceMetricDataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceMetricDataAsync(GetInstanceMetricDataRequest, cb)
	assert(GetInstanceMetricDataRequest, "You must provide a GetInstanceMetricDataRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceMetricData",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceMetricDataRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStaticIps
-- @param GetStaticIpsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStaticIpsAsync(GetStaticIpsRequest, cb)
	assert(GetStaticIpsRequest, "You must provide a GetStaticIpsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetStaticIps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetStaticIpsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOperationsForResource
-- @param GetOperationsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationsForResourceAsync(GetOperationsForResourceRequest, cb)
	assert(GetOperationsForResourceRequest, "You must provide a GetOperationsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetOperationsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOperationsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CloseInstancePublicPorts
-- @param CloseInstancePublicPortsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CloseInstancePublicPortsAsync(CloseInstancePublicPortsRequest, cb)
	assert(CloseInstancePublicPortsRequest, "You must provide a CloseInstancePublicPortsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CloseInstancePublicPorts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CloseInstancePublicPortsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetActiveNames
-- @param GetActiveNamesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetActiveNamesAsync(GetActiveNamesRequest, cb)
	assert(GetActiveNamesRequest, "You must provide a GetActiveNamesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetActiveNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetActiveNamesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstances
-- @param GetInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstancesAsync(GetInstancesRequest, cb)
	assert(GetInstancesRequest, "You must provide a GetInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutInstancePublicPorts
-- @param PutInstancePublicPortsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutInstancePublicPortsAsync(PutInstancePublicPortsRequest, cb)
	assert(PutInstancePublicPortsRequest, "You must provide a PutInstancePublicPortsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.PutInstancePublicPorts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutInstancePublicPortsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteInstance
-- @param DeleteInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceAsync(DeleteInstanceRequest, cb)
	assert(DeleteInstanceRequest, "You must provide a DeleteInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachStaticIp
-- @param AttachStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachStaticIpAsync(AttachStaticIpRequest, cb)
	assert(AttachStaticIpRequest, "You must provide a AttachStaticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AttachStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachStaticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStaticIp
-- @param GetStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStaticIpAsync(GetStaticIpRequest, cb)
	assert(GetStaticIpRequest, "You must provide a GetStaticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetStaticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateKeyPair
-- @param CreateKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateKeyPairAsync(CreateKeyPairRequest, cb)
	assert(CreateKeyPairRequest, "You must provide a CreateKeyPairRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateKeyPairRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDomainEntry
-- @param CreateDomainEntryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainEntryAsync(CreateDomainEntryRequest, cb)
	assert(CreateDomainEntryRequest, "You must provide a CreateDomainEntryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDomainEntry",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDomainEntryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportKeyPair
-- @param ImportKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportKeyPairAsync(ImportKeyPairRequest, cb)
	assert(ImportKeyPairRequest, "You must provide a ImportKeyPairRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.ImportKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ImportKeyPairRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInstancesFromSnapshot
-- @param CreateInstancesFromSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstancesFromSnapshotAsync(CreateInstancesFromSnapshotRequest, cb)
	assert(CreateInstancesFromSnapshotRequest, "You must provide a CreateInstancesFromSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateInstancesFromSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateInstancesFromSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceSnapshot
-- @param GetInstanceSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceSnapshotAsync(GetInstanceSnapshotRequest, cb)
	assert(GetInstanceSnapshotRequest, "You must provide a GetInstanceSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOperation
-- @param GetOperationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationAsync(GetOperationRequest, cb)
	assert(GetOperationRequest, "You must provide a GetOperationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetOperation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOperationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteInstanceSnapshot
-- @param DeleteInstanceSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceSnapshotAsync(DeleteInstanceSnapshotRequest, cb)
	assert(DeleteInstanceSnapshotRequest, "You must provide a DeleteInstanceSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteInstanceSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteInstanceSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- OpenInstancePublicPorts
-- @param OpenInstancePublicPortsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.OpenInstancePublicPortsAsync(OpenInstancePublicPortsRequest, cb)
	assert(OpenInstancePublicPortsRequest, "You must provide a OpenInstancePublicPortsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.OpenInstancePublicPorts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", OpenInstancePublicPortsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartInstance
-- @param StartInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartInstanceAsync(StartInstanceRequest, cb)
	assert(StartInstanceRequest, "You must provide a StartInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.StartInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDomainEntry
-- @param UpdateDomainEntryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainEntryAsync(UpdateDomainEntryRequest, cb)
	assert(UpdateDomainEntryRequest, "You must provide a UpdateDomainEntryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UpdateDomainEntry",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDomainEntryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstancePortStates
-- @param GetInstancePortStatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstancePortStatesAsync(GetInstancePortStatesRequest, cb)
	assert(GetInstancePortStatesRequest, "You must provide a GetInstancePortStatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstancePortStates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstancePortStatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBlueprints
-- @param GetBlueprintsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBlueprintsAsync(GetBlueprintsRequest, cb)
	assert(GetBlueprintsRequest, "You must provide a GetBlueprintsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetBlueprints",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetBlueprintsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDomain
-- @param CreateDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainAsync(CreateDomainRequest, cb)
	assert(CreateDomainRequest, "You must provide a CreateDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DownloadDefaultKeyPair
-- @param DownloadDefaultKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DownloadDefaultKeyPairAsync(DownloadDefaultKeyPairRequest, cb)
	assert(DownloadDefaultKeyPairRequest, "You must provide a DownloadDefaultKeyPairRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DownloadDefaultKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DownloadDefaultKeyPairRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDomainEntry
-- @param DeleteDomainEntryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainEntryAsync(DeleteDomainEntryRequest, cb)
	assert(DeleteDomainEntryRequest, "You must provide a DeleteDomainEntryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteDomainEntry",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDomainEntryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOperations
-- @param GetOperationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationsAsync(GetOperationsRequest, cb)
	assert(GetOperationsRequest, "You must provide a GetOperationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetOperations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOperationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBundles
-- @param GetBundlesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBundlesAsync(GetBundlesRequest, cb)
	assert(GetBundlesRequest, "You must provide a GetBundlesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetBundles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetBundlesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstance
-- @param GetInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceAsync(GetInstanceRequest, cb)
	assert(GetInstanceRequest, "You must provide a GetInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceState
-- @param GetInstanceStateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceStateAsync(GetInstanceStateRequest, cb)
	assert(GetInstanceStateRequest, "You must provide a GetInstanceStateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceStateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInstanceSnapshot
-- @param CreateInstanceSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstanceSnapshotAsync(CreateInstanceSnapshotRequest, cb)
	assert(CreateInstanceSnapshotRequest, "You must provide a CreateInstanceSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateInstanceSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateInstanceSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AllocateStaticIp
-- @param AllocateStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocateStaticIpAsync(AllocateStaticIpRequest, cb)
	assert(AllocateStaticIpRequest, "You must provide a AllocateStaticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AllocateStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AllocateStaticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetKeyPairs
-- @param GetKeyPairsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyPairsAsync(GetKeyPairsRequest, cb)
	assert(GetKeyPairsRequest, "You must provide a GetKeyPairsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetKeyPairs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetKeyPairsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootInstance
-- @param RebootInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootInstanceAsync(RebootInstanceRequest, cb)
	assert(RebootInstanceRequest, "You must provide a RebootInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.RebootInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRegions
-- @param GetRegionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRegionsAsync(GetRegionsRequest, cb)
	assert(GetRegionsRequest, "You must provide a GetRegionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRegions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRegionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceSnapshots
-- @param GetInstanceSnapshotsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceSnapshotsAsync(GetInstanceSnapshotsRequest, cb)
	assert(GetInstanceSnapshotsRequest, "You must provide a GetInstanceSnapshotsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceSnapshotsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopInstance
-- @param StopInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopInstanceAsync(StopInstanceRequest, cb)
	assert(StopInstanceRequest, "You must provide a StopInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.StopInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceAccessDetails
-- @param GetInstanceAccessDetailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceAccessDetailsAsync(GetInstanceAccessDetailsRequest, cb)
	assert(GetInstanceAccessDetailsRequest, "You must provide a GetInstanceAccessDetailsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceAccessDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceAccessDetailsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDomains
-- @param GetDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainsAsync(GetDomainsRequest, cb)
	assert(GetDomainsRequest, "You must provide a GetDomainsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDomainsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PeerVpc
-- @param PeerVpcRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PeerVpcAsync(PeerVpcRequest, cb)
	assert(PeerVpcRequest, "You must provide a PeerVpcRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.PeerVpc",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PeerVpcRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReleaseStaticIp
-- @param ReleaseStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReleaseStaticIpAsync(ReleaseStaticIpRequest, cb)
	assert(ReleaseStaticIpRequest, "You must provide a ReleaseStaticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.ReleaseStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReleaseStaticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- IsVpcPeered
-- @param IsVpcPeeredRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IsVpcPeeredAsync(IsVpcPeeredRequest, cb)
	assert(IsVpcPeeredRequest, "You must provide a IsVpcPeeredRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.IsVpcPeered",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", IsVpcPeeredRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachStaticIp
-- @param DetachStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachStaticIpAsync(DetachStaticIpRequest, cb)
	assert(DetachStaticIpRequest, "You must provide a DetachStaticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DetachStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachStaticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInstances
-- @param CreateInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstancesAsync(CreateInstancesRequest, cb)
	assert(CreateInstancesRequest, "You must provide a CreateInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnpeerVpc
-- @param UnpeerVpcRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnpeerVpcAsync(UnpeerVpcRequest, cb)
	assert(UnpeerVpcRequest, "You must provide a UnpeerVpcRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UnpeerVpc",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnpeerVpcRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDomain
-- @param DeleteDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainAsync(DeleteDomainRequest, cb)
	assert(DeleteDomainRequest, "You must provide a DeleteDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteKeyPair
-- @param DeleteKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteKeyPairAsync(DeleteKeyPairRequest, cb)
	assert(DeleteKeyPairRequest, "You must provide a DeleteKeyPairRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteKeyPairRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
