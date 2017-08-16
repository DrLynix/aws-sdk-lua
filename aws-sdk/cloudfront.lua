--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudFront (cloudfront-2017-03-25)

local M = {}

M.metadata = {
	api_version = "2017-03-25",
	json_version = "",
	protocol = "rest-xml",
	checksum_format = "",
	endpoint_prefix = "cloudfront",
	service_abbreviation = "CloudFront",
	service_full_name = "Amazon CloudFront",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "cloudfront.amazonaws.com",
	uid = "cloudfront-2017-03-25",
}

local keys = {}
local asserts = {}

keys.GetCloudFrontOriginAccessIdentityRequest = { ["Id"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityRequest[k], "GetCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityRequest
-- <p>The request to get an origin access identity's information.</p>
-- @param _Id [string] <p>The identity's ID.</p>
-- Required parameter: Id
function M.GetCloudFrontOriginAccessIdentityRequest(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityRequest(t)
	return t
end

keys.CustomErrorResponse = { ["ErrorCode"] = true, ["ResponsePagePath"] = true, ["ResponseCode"] = true, ["ErrorCachingMinTTL"] = true, nil }

function asserts.AssertCustomErrorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomErrorResponse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.Assertinteger(struct["ErrorCode"]) end
	if struct["ResponsePagePath"] then asserts.Assertstring(struct["ResponsePagePath"]) end
	if struct["ResponseCode"] then asserts.Assertstring(struct["ResponseCode"]) end
	if struct["ErrorCachingMinTTL"] then asserts.Assertlong(struct["ErrorCachingMinTTL"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomErrorResponse[k], "CustomErrorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomErrorResponse
-- <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _ErrorCode [integer] <p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>
-- @param _ResponsePagePath [string] <p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>. </p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponsePagePath&gt;</code>, in the XML document.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>
-- @param _ResponseCode [string] <p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponseCode&gt;</code>, in the XML document.</p>
-- @param _ErrorCachingMinTTL [long] <p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>If you don't want to specify a value, include an empty element, <code>&lt;ErrorCachingMinTTL&gt;</code>, in the XML document.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required parameter: ErrorCode
function M.CustomErrorResponse(_ErrorCode, _ResponsePagePath, _ResponseCode, _ErrorCachingMinTTL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomErrorResponse")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ResponsePagePath"] = _ResponsePagePath,
		["ResponseCode"] = _ResponseCode,
		["ErrorCachingMinTTL"] = _ErrorCachingMinTTL,
	}
	asserts.AssertCustomErrorResponse(t)
	return t
end

keys.InvalidArgument = { ["Message"] = true, nil }

function asserts.AssertInvalidArgument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgument to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgument[k], "InvalidArgument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgument
-- <p>The argument is invalid.</p>
-- @param _Message [string] 
function M.InvalidArgument(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgument")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidArgument(t)
	return t
end

keys.StreamingDistributionAlreadyExists = { ["Message"] = true, nil }

function asserts.AssertStreamingDistributionAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionAlreadyExists[k], "StreamingDistributionAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionAlreadyExists
--  
-- @param _Message [string] 
function M.StreamingDistributionAlreadyExists(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionAlreadyExists")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertStreamingDistributionAlreadyExists(t)
	return t
end

keys.InvalidWebACLId = { ["Message"] = true, nil }

function asserts.AssertInvalidWebACLId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidWebACLId to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidWebACLId[k], "InvalidWebACLId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidWebACLId
--  
-- @param _Message [string] 
function M.InvalidWebACLId(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidWebACLId")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidWebACLId(t)
	return t
end

keys.TooManyQueryStringParameters = { ["Message"] = true, nil }

function asserts.AssertTooManyQueryStringParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyQueryStringParameters to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyQueryStringParameters[k], "TooManyQueryStringParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyQueryStringParameters
--  
-- @param _Message [string] 
function M.TooManyQueryStringParameters(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyQueryStringParameters")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyQueryStringParameters(t)
	return t
end

keys.InvalidRelativePath = { ["Message"] = true, nil }

function asserts.AssertInvalidRelativePath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRelativePath to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRelativePath[k], "InvalidRelativePath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRelativePath
-- <p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>
-- @param _Message [string] 
function M.InvalidRelativePath(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRelativePath")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidRelativePath(t)
	return t
end

keys.CloudFrontOriginAccessIdentityConfig = { ["Comment"] = true, ["CallerReference"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentityConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentityConfig[k], "CloudFrontOriginAccessIdentityConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityConfig
-- <p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>
-- @param _Comment [string] <p>Any comments you want to include about the origin access identity. </p>
-- @param _CallerReference [string] <p>A unique number that ensures the request can't be replayed.</p> <p>If the <code>CallerReference</code> is new (no matter the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. </p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
-- Required parameter: CallerReference
-- Required parameter: Comment
function M.CloudFrontOriginAccessIdentityConfig(_Comment, _CallerReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityConfig")
	local t = { 
		["Comment"] = _Comment,
		["CallerReference"] = _CallerReference,
	}
	asserts.AssertCloudFrontOriginAccessIdentityConfig(t)
	return t
end

keys.ListTagsForResourceResult = { ["Tags"] = true, nil }

function asserts.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResult[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
-- <p> The returned result of the corresponding request.</p>
-- @param _Tags [Tags] <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- Required parameter: Tags
function M.ListTagsForResourceResult(_Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResult")
	local t = { 
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsForResourceResult(t)
	return t
end

keys.TooManyDistributionsWithLambdaAssociations = { ["Message"] = true, nil }

function asserts.AssertTooManyDistributionsWithLambdaAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyDistributionsWithLambdaAssociations to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyDistributionsWithLambdaAssociations[k], "TooManyDistributionsWithLambdaAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyDistributionsWithLambdaAssociations
-- <p>Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.</p>
-- @param _Message [string] 
function M.TooManyDistributionsWithLambdaAssociations(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyDistributionsWithLambdaAssociations")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyDistributionsWithLambdaAssociations(t)
	return t
end

keys.GetDistributionRequest = { ["Id"] = true, nil }

function asserts.AssertGetDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionRequest[k], "GetDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionRequest
-- <p>The request to get a distribution's information.</p>
-- @param _Id [string] <p>The distribution's ID.</p>
-- Required parameter: Id
function M.GetDistributionRequest(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionRequest")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertGetDistributionRequest(t)
	return t
end

keys.InvalidMinimumProtocolVersion = { ["Message"] = true, nil }

function asserts.AssertInvalidMinimumProtocolVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMinimumProtocolVersion to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidMinimumProtocolVersion[k], "InvalidMinimumProtocolVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMinimumProtocolVersion
--  
-- @param _Message [string] 
function M.InvalidMinimumProtocolVersion(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMinimumProtocolVersion")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidMinimumProtocolVersion(t)
	return t
end

keys.NoSuchCloudFrontOriginAccessIdentity = { ["Message"] = true, nil }

function asserts.AssertNoSuchCloudFrontOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchCloudFrontOriginAccessIdentity to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchCloudFrontOriginAccessIdentity[k], "NoSuchCloudFrontOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchCloudFrontOriginAccessIdentity
-- <p>The specified origin access identity does not exist.</p>
-- @param _Message [string] 
function M.NoSuchCloudFrontOriginAccessIdentity(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchCloudFrontOriginAccessIdentity")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNoSuchCloudFrontOriginAccessIdentity(t)
	return t
end

keys.TooManyLambdaFunctionAssociations = { ["Message"] = true, nil }

function asserts.AssertTooManyLambdaFunctionAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyLambdaFunctionAssociations to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyLambdaFunctionAssociations[k], "TooManyLambdaFunctionAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyLambdaFunctionAssociations
-- <p>Your request contains more Lambda function associations than are allowed per distribution.</p>
-- @param _Message [string] 
function M.TooManyLambdaFunctionAssociations(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyLambdaFunctionAssociations")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyLambdaFunctionAssociations(t)
	return t
end

keys.InvalidRequiredProtocol = { ["Message"] = true, nil }

function asserts.AssertInvalidRequiredProtocol(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequiredProtocol to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequiredProtocol[k], "InvalidRequiredProtocol contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequiredProtocol
-- <p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>
-- @param _Message [string] 
function M.InvalidRequiredProtocol(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequiredProtocol")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidRequiredProtocol(t)
	return t
end

keys.OriginSslProtocols = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertOriginSslProtocols(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginSslProtocols to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertSslProtocolsList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.OriginSslProtocols[k], "OriginSslProtocols contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginSslProtocols
-- <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>
-- @param _Items [SslProtocolsList] <p>A list that contains allowed SSL/TLS protocols for this distribution.</p>
-- @param _Quantity [integer] <p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin. </p>
-- Required parameter: Quantity
-- Required parameter: Items
function M.OriginSslProtocols(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OriginSslProtocols")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertOriginSslProtocols(t)
	return t
end

keys.InvalidationList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertInvalidationList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertInvalidationSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidationList[k], "InvalidationList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationList
-- <p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Items [InvalidationSummaryList] <p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current AWS account.</p>
-- @param _NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>
-- @param _MaxItems [integer] <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
-- @param _Marker [string] <p>The value that you provided for the <code>Marker</code> request parameter.</p>
-- @param _IsTruncated [boolean] <p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>
-- @param _Quantity [integer] <p>The number of invalidation batches that were created by the current AWS account. </p>
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.InvalidationList(_Items, _NextMarker, _MaxItems, _Marker, _IsTruncated, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidationList")
	local t = { 
		["Items"] = _Items,
		["NextMarker"] = _NextMarker,
		["MaxItems"] = _MaxItems,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Quantity"] = _Quantity,
	}
	asserts.AssertInvalidationList(t)
	return t
end

keys.Origin = { ["OriginPath"] = true, ["DomainName"] = true, ["CustomOriginConfig"] = true, ["CustomHeaders"] = true, ["S3OriginConfig"] = true, ["Id"] = true, nil }

function asserts.AssertOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Origin to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["OriginPath"] then asserts.Assertstring(struct["OriginPath"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["CustomOriginConfig"] then asserts.AssertCustomOriginConfig(struct["CustomOriginConfig"]) end
	if struct["CustomHeaders"] then asserts.AssertCustomHeaders(struct["CustomHeaders"]) end
	if struct["S3OriginConfig"] then asserts.AssertS3OriginConfig(struct["S3OriginConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Origin[k], "Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Origin
-- <p>A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.</p> <p>For the current limit on the number of origins that you can create for a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>
-- @param _OriginPath [string] <p>An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin. When you include the <code>OriginPath</code> element, specify the directory name, beginning with a <code>/</code>. CloudFront appends the directory name to the value of <code>DomainName</code>, for example, <code>example.com/production</code>. Do not include a <code>/</code> at the end of the directory name.</p> <p>For example, suppose you've specified the following values for your distribution:</p> <ul> <li> <p> <code>DomainName</code>: An Amazon S3 bucket named <code>myawsbucket</code>.</p> </li> <li> <p> <code>OriginPath</code>: <code>/production</code> </p> </li> <li> <p> <code>CNAME</code>: <code>example.com</code> </p> </li> </ul> <p>When a user enters <code>example.com/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/index.html</code>.</p> <p>When a user enters <code>example.com/acme/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/acme/index.html</code>.</p>
-- @param _DomainName [string] <p> <b>Amazon S3 origins</b>: The DNS name of the Amazon S3 bucket from which you want CloudFront to get objects for this origin, for example, <code>myawsbucket.s3.amazonaws.com</code>.</p> <p>Constraints for Amazon S3 origins: </p> <ul> <li> <p>If you configured Amazon S3 Transfer Acceleration for your bucket, do not specify the <code>s3-accelerate</code> endpoint for <code>DomainName</code>.</p> </li> <li> <p>The bucket name must be between 3 and 63 characters long (inclusive).</p> </li> <li> <p>The bucket name must contain only lowercase characters, numbers, periods, underscores, and dashes.</p> </li> <li> <p>The bucket name must not contain adjacent periods.</p> </li> </ul> <p> <b>Custom Origins</b>: The DNS domain name for the HTTP server from which you want CloudFront to get objects for this origin, for example, <code>www.example.com</code>. </p> <p>Constraints for custom origins:</p> <ul> <li> <p> <code>DomainName</code> must be a valid DNS name that contains only a-z, A-Z, 0-9, dot (.), hyphen (-), or underscore (_) characters.</p> </li> <li> <p>The name cannot exceed 128 characters.</p> </li> </ul>
-- @param _CustomOriginConfig [CustomOriginConfig] <p>A complex type that contains information about a custom origin. If the origin is an Amazon S3 bucket, use the <code>S3OriginConfig</code> element instead.</p>
-- @param _CustomHeaders [CustomHeaders] <p>A complex type that contains names and values for the custom headers that you want.</p>
-- @param _S3OriginConfig [S3OriginConfig] <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>
-- @param _Id [string] <p>A unique identifier for the origin. The value of <code>Id</code> must be unique within the distribution.</p> <p>When you specify the value of <code>TargetOriginId</code> for the default cache behavior or for another cache behavior, you indicate the origin to which you want the cache behavior to route requests by specifying the value of the <code>Id</code> element for that origin. When a request matches the path pattern for that cache behavior, CloudFront routes the request to the specified origin. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required parameter: Id
-- Required parameter: DomainName
function M.Origin(_OriginPath, _DomainName, _CustomOriginConfig, _CustomHeaders, _S3OriginConfig, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Origin")
	local t = { 
		["OriginPath"] = _OriginPath,
		["DomainName"] = _DomainName,
		["CustomOriginConfig"] = _CustomOriginConfig,
		["CustomHeaders"] = _CustomHeaders,
		["S3OriginConfig"] = _S3OriginConfig,
		["Id"] = _Id,
	}
	asserts.AssertOrigin(t)
	return t
end

keys.UpdateCloudFrontOriginAccessIdentityResult = { ["CloudFrontOriginAccessIdentity"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then asserts.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCloudFrontOriginAccessIdentityResult[k], "UpdateCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCloudFrontOriginAccessIdentityResult
-- <p>The returned result of the corresponding request.</p>
-- @param _CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] <p>The origin access identity's information.</p>
-- @param _ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.UpdateCloudFrontOriginAccessIdentityResult(_CloudFrontOriginAccessIdentity, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCloudFrontOriginAccessIdentityResult")
	local t = { 
		["CloudFrontOriginAccessIdentity"] = _CloudFrontOriginAccessIdentity,
		["ETag"] = _ETag,
	}
	asserts.AssertUpdateCloudFrontOriginAccessIdentityResult(t)
	return t
end

keys.DistributionConfigWithTags = { ["DistributionConfig"] = true, ["Tags"] = true, nil }

function asserts.AssertDistributionConfigWithTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionConfigWithTags to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionConfigWithTags[k], "DistributionConfigWithTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionConfigWithTags
-- <p>A distribution Configuration and a list of tags to be associated with the distribution.</p>
-- @param _DistributionConfig [DistributionConfig] <p>A distribution configuration.</p>
-- @param _Tags [Tags] <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
-- Required parameter: DistributionConfig
-- Required parameter: Tags
function M.DistributionConfigWithTags(_DistributionConfig, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionConfigWithTags")
	local t = { 
		["DistributionConfig"] = _DistributionConfig,
		["Tags"] = _Tags,
	}
	asserts.AssertDistributionConfigWithTags(t)
	return t
end

keys.GetCloudFrontOriginAccessIdentityConfigResult = { ["CloudFrontOriginAccessIdentityConfig"] = true, ["ETag"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityConfigResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityConfigResult[k], "GetCloudFrontOriginAccessIdentityConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityConfigResult
-- <p>The returned result of the corresponding request.</p>
-- @param _CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The origin access identity's configuration information. </p>
-- @param _ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.GetCloudFrontOriginAccessIdentityConfigResult(_CloudFrontOriginAccessIdentityConfig, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityConfigResult")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = _CloudFrontOriginAccessIdentityConfig,
		["ETag"] = _ETag,
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityConfigResult(t)
	return t
end

keys.InvalidForwardCookies = { ["Message"] = true, nil }

function asserts.AssertInvalidForwardCookies(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidForwardCookies to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidForwardCookies[k], "InvalidForwardCookies contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidForwardCookies
-- <p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>
-- @param _Message [string] 
function M.InvalidForwardCookies(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidForwardCookies")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidForwardCookies(t)
	return t
end

keys.Headers = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Headers to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertHeaderList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Headers[k], "Headers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Headers
-- <p>A complex type that specifies the headers that you want CloudFront to forward to the origin for this cache behavior.</p> <p>For the headers that you specify, CloudFront also caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>Product</code> header that has a value of either <code>Acme</code> or <code>Apex</code>, and you configure CloudFront to cache your content based on values in the <code>Product</code> header. CloudFront forwards the <code>Product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Items [HeaderList] <p>A complex type that contains one <code>Name</code> element for each header that you want CloudFront to forward to the origin and to vary on for this cache behavior. If <code>Quantity</code> is <code>0</code>, omit <code>Items</code>.</p>
-- @param _Quantity [integer] <p>The number of different headers that you want CloudFront to forward to the origin for this cache behavior. You can configure each cache behavior in a web distribution to do one of the following:</p> <ul> <li> <p> <b>Forward all headers to your origin</b>: Specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>.</p> <important> <p>If you configure CloudFront to forward all headers to your origin, CloudFront doesn't cache the objects associated with this cache behavior. Instead, it sends every request to the origin.</p> </important> </li> <li> <p> <i>Forward a whitelist of headers you specify</i>: Specify the number of headers that you want to forward, and specify the header names in <code>Name</code> elements. CloudFront caches your objects based on the values in all of the specified headers. CloudFront also forwards the headers that it forwards by default, but it caches your objects based only on the headers that you specify. </p> </li> <li> <p> <b>Forward only the default headers</b>: Specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. In this configuration, CloudFront doesn't cache based on the values in the request headers.</p> </li> </ul>
-- Required parameter: Quantity
function M.Headers(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Headers")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertHeaders(t)
	return t
end

keys.GetCloudFrontOriginAccessIdentityConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityConfigRequest[k], "GetCloudFrontOriginAccessIdentityConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityConfigRequest
-- <p>The origin access identity's configuration information. For more information, see <a>CloudFrontOriginAccessIdentityConfigComplexType</a>.</p>
-- @param _Id [string] <p>The identity's ID. </p>
-- Required parameter: Id
function M.GetCloudFrontOriginAccessIdentityConfigRequest(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityConfigRequest")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityConfigRequest(t)
	return t
end

keys.DistributionConfig = { ["Comment"] = true, ["CacheBehaviors"] = true, ["IsIPV6Enabled"] = true, ["Logging"] = true, ["WebACLId"] = true, ["Origins"] = true, ["DefaultRootObject"] = true, ["PriceClass"] = true, ["Enabled"] = true, ["DefaultCacheBehavior"] = true, ["CallerReference"] = true, ["ViewerCertificate"] = true, ["CustomErrorResponses"] = true, ["HttpVersion"] = true, ["Restrictions"] = true, ["Aliases"] = true, nil }

function asserts.AssertDistributionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Origins"], "Expected key Origins to exist in table")
	assert(struct["DefaultCacheBehavior"], "Expected key DefaultCacheBehavior to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["CacheBehaviors"] then asserts.AssertCacheBehaviors(struct["CacheBehaviors"]) end
	if struct["IsIPV6Enabled"] then asserts.Assertboolean(struct["IsIPV6Enabled"]) end
	if struct["Logging"] then asserts.AssertLoggingConfig(struct["Logging"]) end
	if struct["WebACLId"] then asserts.Assertstring(struct["WebACLId"]) end
	if struct["Origins"] then asserts.AssertOrigins(struct["Origins"]) end
	if struct["DefaultRootObject"] then asserts.Assertstring(struct["DefaultRootObject"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["DefaultCacheBehavior"] then asserts.AssertDefaultCacheBehavior(struct["DefaultCacheBehavior"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	if struct["ViewerCertificate"] then asserts.AssertViewerCertificate(struct["ViewerCertificate"]) end
	if struct["CustomErrorResponses"] then asserts.AssertCustomErrorResponses(struct["CustomErrorResponses"]) end
	if struct["HttpVersion"] then asserts.AssertHttpVersion(struct["HttpVersion"]) end
	if struct["Restrictions"] then asserts.AssertRestrictions(struct["Restrictions"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionConfig[k], "DistributionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionConfig
-- <p>A distribution configuration.</p>
-- @param _Comment [string] <p>Any comments you want to include about the distribution.</p> <p>If you don't want to specify a comment, include an empty <code>Comment</code> element.</p> <p>To delete an existing comment, update the distribution configuration and include an empty <code>Comment</code> element.</p> <p>To add or change a comment, update the distribution configuration and specify the new comment.</p>
-- @param _CacheBehaviors [CacheBehaviors] <p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>
-- @param _IsIPV6Enabled [boolean] <p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. </p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, do not enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Amazon Route 53 alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Amazon Route 53 or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>
-- @param _Logging [LoggingConfig] <p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _WebACLId [string] <p>A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution.</p> <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about AWS WAF, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">AWS WAF Developer Guide</a>. </p>
-- @param _Origins [Origins] <p>A complex type that contains information about origins for this distribution. </p>
-- @param _DefaultRootObject [string] <p>The object that you want CloudFront to request from your origin (for example, <code>index.html</code>) when a viewer requests the root URL for your distribution (<code>http://www.example.com</code>) instead of an object in your distribution (<code>http://www.example.com/product-description.html</code>). Specifying a default root object avoids exposing the contents of your distribution.</p> <p>Specify only the object name, for example, <code>index.html</code>. Do not add a <code>/</code> before the object name.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html">Creating a Default Root Object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _PriceClass [PriceClass] <p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes map to CloudFront regions, see <a href="https://aws.amazon.com/cloudfront/pricing/">Amazon CloudFront Pricing</a>.</p>
-- @param _Enabled [boolean] <p>From this field, you can enable or disable the selected distribution.</p> <p>If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted.</p>
-- @param _DefaultCacheBehavior [DefaultCacheBehavior] <p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-- @param _CallerReference [string] <p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous request to create a distribution, and if the content of the <code>DistributionConfig</code> is identical to the original request (ignoring white space), CloudFront returns the same the response that it returned to the original request.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous request to create a distribution but the content of the <code>DistributionConfig</code> is different from the original request, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
-- @param _ViewerCertificate [ViewerCertificate] 
-- @param _CustomErrorResponses [CustomErrorResponses] <p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _HttpVersion [HttpVersion] <p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must support Server Name Identification (SNI).</p> <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. You can improve performance by optimizing for HTTP/2. For more information, do an Internet search for "http/2 optimization." </p>
-- @param _Restrictions [Restrictions] 
-- @param _Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
-- Required parameter: CallerReference
-- Required parameter: Origins
-- Required parameter: DefaultCacheBehavior
-- Required parameter: Comment
-- Required parameter: Enabled
function M.DistributionConfig(_Comment, _CacheBehaviors, _IsIPV6Enabled, _Logging, _WebACLId, _Origins, _DefaultRootObject, _PriceClass, _Enabled, _DefaultCacheBehavior, _CallerReference, _ViewerCertificate, _CustomErrorResponses, _HttpVersion, _Restrictions, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionConfig")
	local t = { 
		["Comment"] = _Comment,
		["CacheBehaviors"] = _CacheBehaviors,
		["IsIPV6Enabled"] = _IsIPV6Enabled,
		["Logging"] = _Logging,
		["WebACLId"] = _WebACLId,
		["Origins"] = _Origins,
		["DefaultRootObject"] = _DefaultRootObject,
		["PriceClass"] = _PriceClass,
		["Enabled"] = _Enabled,
		["DefaultCacheBehavior"] = _DefaultCacheBehavior,
		["CallerReference"] = _CallerReference,
		["ViewerCertificate"] = _ViewerCertificate,
		["CustomErrorResponses"] = _CustomErrorResponses,
		["HttpVersion"] = _HttpVersion,
		["Restrictions"] = _Restrictions,
		["Aliases"] = _Aliases,
	}
	asserts.AssertDistributionConfig(t)
	return t
end

keys.CustomErrorResponses = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCustomErrorResponses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomErrorResponses to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCustomErrorResponseList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomErrorResponses[k], "CustomErrorResponses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomErrorResponses
-- <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Items [CustomErrorResponseList] <p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>
-- @param _Quantity [integer] <p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- Required parameter: Quantity
function M.CustomErrorResponses(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomErrorResponses")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertCustomErrorResponses(t)
	return t
end

keys.CloudFrontOriginAccessIdentity = { ["CloudFrontOriginAccessIdentityConfig"] = true, ["S3CanonicalUserId"] = true, ["Id"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentity to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["S3CanonicalUserId"], "Expected key S3CanonicalUserId to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["S3CanonicalUserId"] then asserts.Assertstring(struct["S3CanonicalUserId"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentity[k], "CloudFrontOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentity
-- <p>CloudFront origin access identity.</p>
-- @param _CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The current configuration information for the identity. </p>
-- @param _S3CanonicalUserId [string] <p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3. </p>
-- @param _Id [string] <p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>. </p>
-- Required parameter: Id
-- Required parameter: S3CanonicalUserId
function M.CloudFrontOriginAccessIdentity(_CloudFrontOriginAccessIdentityConfig, _S3CanonicalUserId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentity")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = _CloudFrontOriginAccessIdentityConfig,
		["S3CanonicalUserId"] = _S3CanonicalUserId,
		["Id"] = _Id,
	}
	asserts.AssertCloudFrontOriginAccessIdentity(t)
	return t
end

keys.MissingBody = { ["Message"] = true, nil }

function asserts.AssertMissingBody(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingBody to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingBody[k], "MissingBody contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingBody
-- <p>This operation requires a body. Ensure that the body is present and the Content-Type header is set.</p>
-- @param _Message [string] 
function M.MissingBody(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingBody")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertMissingBody(t)
	return t
end

keys.S3OriginConfig = { ["OriginAccessIdentity"] = true, nil }

function asserts.AssertS3OriginConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OriginConfig to be of type 'table'")
	assert(struct["OriginAccessIdentity"], "Expected key OriginAccessIdentity to exist in table")
	if struct["OriginAccessIdentity"] then asserts.Assertstring(struct["OriginAccessIdentity"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3OriginConfig[k], "S3OriginConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OriginConfig
-- <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>
-- @param _OriginAccessIdentity [string] <p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p>origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i> </p> <p>where <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required parameter: OriginAccessIdentity
function M.S3OriginConfig(_OriginAccessIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3OriginConfig")
	local t = { 
		["OriginAccessIdentity"] = _OriginAccessIdentity,
	}
	asserts.AssertS3OriginConfig(t)
	return t
end

keys.StreamingDistributionNotDisabled = { ["Message"] = true, nil }

function asserts.AssertStreamingDistributionNotDisabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionNotDisabled to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionNotDisabled[k], "StreamingDistributionNotDisabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionNotDisabled
--  
-- @param _Message [string] 
function M.StreamingDistributionNotDisabled(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionNotDisabled")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertStreamingDistributionNotDisabled(t)
	return t
end

keys.CNAMEAlreadyExists = { ["Message"] = true, nil }

function asserts.AssertCNAMEAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CNAMEAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CNAMEAlreadyExists[k], "CNAMEAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CNAMEAlreadyExists
--  
-- @param _Message [string] 
function M.CNAMEAlreadyExists(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CNAMEAlreadyExists")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCNAMEAlreadyExists(t)
	return t
end

keys.TooManyCacheBehaviors = { ["Message"] = true, nil }

function asserts.AssertTooManyCacheBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCacheBehaviors to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyCacheBehaviors[k], "TooManyCacheBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCacheBehaviors
-- <p>You cannot create more cache behaviors for the distribution.</p>
-- @param _Message [string] 
function M.TooManyCacheBehaviors(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCacheBehaviors")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyCacheBehaviors(t)
	return t
end

keys.InvalidTTLOrder = { ["Message"] = true, nil }

function asserts.AssertInvalidTTLOrder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTTLOrder to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTTLOrder[k], "InvalidTTLOrder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTTLOrder
--  
-- @param _Message [string] 
function M.InvalidTTLOrder(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTTLOrder")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidTTLOrder(t)
	return t
end

keys.TooManyDistributions = { ["Message"] = true, nil }

function asserts.AssertTooManyDistributions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyDistributions to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyDistributions[k], "TooManyDistributions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyDistributions
-- <p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>
-- @param _Message [string] 
function M.TooManyDistributions(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyDistributions")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyDistributions(t)
	return t
end

keys.InvalidLocationCode = { ["Message"] = true, nil }

function asserts.AssertInvalidLocationCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLocationCode to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLocationCode[k], "InvalidLocationCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLocationCode
--  
-- @param _Message [string] 
function M.InvalidLocationCode(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLocationCode")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidLocationCode(t)
	return t
end

keys.DefaultCacheBehavior = { ["TrustedSigners"] = true, ["LambdaFunctionAssociations"] = true, ["TargetOriginId"] = true, ["ViewerProtocolPolicy"] = true, ["ForwardedValues"] = true, ["MaxTTL"] = true, ["SmoothStreaming"] = true, ["DefaultTTL"] = true, ["AllowedMethods"] = true, ["MinTTL"] = true, ["Compress"] = true, nil }

function asserts.AssertDefaultCacheBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultCacheBehavior to be of type 'table'")
	assert(struct["TargetOriginId"], "Expected key TargetOriginId to exist in table")
	assert(struct["ForwardedValues"], "Expected key ForwardedValues to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["ViewerProtocolPolicy"], "Expected key ViewerProtocolPolicy to exist in table")
	assert(struct["MinTTL"], "Expected key MinTTL to exist in table")
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["LambdaFunctionAssociations"] then asserts.AssertLambdaFunctionAssociations(struct["LambdaFunctionAssociations"]) end
	if struct["TargetOriginId"] then asserts.Assertstring(struct["TargetOriginId"]) end
	if struct["ViewerProtocolPolicy"] then asserts.AssertViewerProtocolPolicy(struct["ViewerProtocolPolicy"]) end
	if struct["ForwardedValues"] then asserts.AssertForwardedValues(struct["ForwardedValues"]) end
	if struct["MaxTTL"] then asserts.Assertlong(struct["MaxTTL"]) end
	if struct["SmoothStreaming"] then asserts.Assertboolean(struct["SmoothStreaming"]) end
	if struct["DefaultTTL"] then asserts.Assertlong(struct["DefaultTTL"]) end
	if struct["AllowedMethods"] then asserts.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MinTTL"] then asserts.Assertlong(struct["MinTTL"]) end
	if struct["Compress"] then asserts.Assertboolean(struct["Compress"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultCacheBehavior[k], "DefaultCacheBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultCacheBehavior
-- <p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-- @param _TrustedSigners [TrustedSigners] <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>
-- @param _LambdaFunctionAssociations [LambdaFunctionAssociations] <p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>
-- @param _TargetOriginId [string] <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.</p>
-- @param _ViewerProtocolPolicy [ViewerProtocolPolicy] <p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
-- @param _ForwardedValues [ForwardedValues] <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-- @param _MaxTTL [long] 
-- @param _SmoothStreaming [boolean] <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>
-- @param _DefaultTTL [long] <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _AllowedMethods [AllowedMethods] 
-- @param _MinTTL [long] <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
-- @param _Compress [boolean] <p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required parameter: TargetOriginId
-- Required parameter: ForwardedValues
-- Required parameter: TrustedSigners
-- Required parameter: ViewerProtocolPolicy
-- Required parameter: MinTTL
function M.DefaultCacheBehavior(_TrustedSigners, _LambdaFunctionAssociations, _TargetOriginId, _ViewerProtocolPolicy, _ForwardedValues, _MaxTTL, _SmoothStreaming, _DefaultTTL, _AllowedMethods, _MinTTL, _Compress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultCacheBehavior")
	local t = { 
		["TrustedSigners"] = _TrustedSigners,
		["LambdaFunctionAssociations"] = _LambdaFunctionAssociations,
		["TargetOriginId"] = _TargetOriginId,
		["ViewerProtocolPolicy"] = _ViewerProtocolPolicy,
		["ForwardedValues"] = _ForwardedValues,
		["MaxTTL"] = _MaxTTL,
		["SmoothStreaming"] = _SmoothStreaming,
		["DefaultTTL"] = _DefaultTTL,
		["AllowedMethods"] = _AllowedMethods,
		["MinTTL"] = _MinTTL,
		["Compress"] = _Compress,
	}
	asserts.AssertDefaultCacheBehavior(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>
-- @param _Value [TagValue] <p> A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
-- @param _Key [TagKey] <p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
-- Required parameter: Key
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.CachedMethods = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCachedMethods(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CachedMethods to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertMethodsList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CachedMethods[k], "CachedMethods contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CachedMethods
-- <p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>
-- @param _Items [MethodsList] <p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to.</p>
-- @param _Quantity [integer] <p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>
-- Required parameter: Quantity
-- Required parameter: Items
function M.CachedMethods(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CachedMethods")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertCachedMethods(t)
	return t
end

keys.AllowedMethods = { ["Items"] = true, ["CachedMethods"] = true, ["Quantity"] = true, nil }

function asserts.AssertAllowedMethods(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllowedMethods to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertMethodsList(struct["Items"]) end
	if struct["CachedMethods"] then asserts.AssertCachedMethods(struct["CachedMethods"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllowedMethods[k], "AllowedMethods contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllowedMethods
-- <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
-- @param _Items [MethodsList] <p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>
-- @param _CachedMethods [CachedMethods] 
-- @param _Quantity [integer] <p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>
-- Required parameter: Quantity
-- Required parameter: Items
function M.AllowedMethods(_Items, _CachedMethods, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllowedMethods")
	local t = { 
		["Items"] = _Items,
		["CachedMethods"] = _CachedMethods,
		["Quantity"] = _Quantity,
	}
	asserts.AssertAllowedMethods(t)
	return t
end

keys.ListInvalidationsResult = { ["InvalidationList"] = true, nil }

function asserts.AssertListInvalidationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvalidationsResult to be of type 'table'")
	if struct["InvalidationList"] then asserts.AssertInvalidationList(struct["InvalidationList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInvalidationsResult[k], "ListInvalidationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvalidationsResult
-- <p>The returned result of the corresponding request. </p>
-- @param _InvalidationList [InvalidationList] <p>Information about invalidation batches. </p>
function M.ListInvalidationsResult(_InvalidationList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInvalidationsResult")
	local t = { 
		["InvalidationList"] = _InvalidationList,
	}
	asserts.AssertListInvalidationsResult(t)
	return t
end

keys.InvalidOrigin = { ["Message"] = true, nil }

function asserts.AssertInvalidOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOrigin to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOrigin[k], "InvalidOrigin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOrigin
-- <p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>
-- @param _Message [string] 
function M.InvalidOrigin(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOrigin")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidOrigin(t)
	return t
end

keys.TooManyInvalidationsInProgress = { ["Message"] = true, nil }

function asserts.AssertTooManyInvalidationsInProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyInvalidationsInProgress to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyInvalidationsInProgress[k], "TooManyInvalidationsInProgress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyInvalidationsInProgress
-- <p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>
-- @param _Message [string] 
function M.TooManyInvalidationsInProgress(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyInvalidationsInProgress")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyInvalidationsInProgress(t)
	return t
end

keys.NoSuchStreamingDistribution = { ["Message"] = true, nil }

function asserts.AssertNoSuchStreamingDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchStreamingDistribution to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchStreamingDistribution[k], "NoSuchStreamingDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchStreamingDistribution
-- <p>The specified streaming distribution does not exist.</p>
-- @param _Message [string] 
function M.NoSuchStreamingDistribution(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchStreamingDistribution")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNoSuchStreamingDistribution(t)
	return t
end

keys.UpdateDistributionRequest = { ["Id"] = true, ["DistributionConfig"] = true, ["IfMatch"] = true, nil }

function asserts.AssertUpdateDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDistributionRequest to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDistributionRequest[k], "UpdateDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDistributionRequest
-- <p>The request to update a distribution.</p>
-- @param _Id [string] <p>The distribution's id.</p>
-- @param _DistributionConfig [DistributionConfig] <p>The distribution's configuration information.</p>
-- @param _IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required parameter: DistributionConfig
-- Required parameter: Id
function M.UpdateDistributionRequest(_Id, _DistributionConfig, _IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDistributionRequest")
	local t = { 
		["Id"] = _Id,
		["DistributionConfig"] = _DistributionConfig,
		["IfMatch"] = _IfMatch,
	}
	asserts.AssertUpdateDistributionRequest(t)
	return t
end

keys.ViewerCertificate = { ["Certificate"] = true, ["CloudFrontDefaultCertificate"] = true, ["ACMCertificateArn"] = true, ["SSLSupportMethod"] = true, ["IAMCertificateId"] = true, ["CertificateSource"] = true, ["MinimumProtocolVersion"] = true, nil }

function asserts.AssertViewerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewerCertificate to be of type 'table'")
	if struct["Certificate"] then asserts.Assertstring(struct["Certificate"]) end
	if struct["CloudFrontDefaultCertificate"] then asserts.Assertboolean(struct["CloudFrontDefaultCertificate"]) end
	if struct["ACMCertificateArn"] then asserts.Assertstring(struct["ACMCertificateArn"]) end
	if struct["SSLSupportMethod"] then asserts.AssertSSLSupportMethod(struct["SSLSupportMethod"]) end
	if struct["IAMCertificateId"] then asserts.Assertstring(struct["IAMCertificateId"]) end
	if struct["CertificateSource"] then asserts.AssertCertificateSource(struct["CertificateSource"]) end
	if struct["MinimumProtocolVersion"] then asserts.AssertMinimumProtocolVersion(struct["MinimumProtocolVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ViewerCertificate[k], "ViewerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewerCertificate
-- <p>A complex type that specifies the following:</p> <ul> <li> <p>Which SSL/TLS certificate to use when viewers request objects using HTTPS</p> </li> <li> <p>Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names</p> </li> <li> <p>The minimum protocol version that you want CloudFront to use when communicating with viewers</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
-- @param _Certificate [string] <p>Include one of these values to specify the following:</p> <ul> <li> <p>Whether you want viewers to use HTTP or HTTPS to request your objects.</p> </li> <li> <p>If you want viewers to use HTTPS, whether you're using an alternate domain name such as example.com or the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code>.</p> </li> <li> <p>If you're using an alternate domain name, whether AWS Certificate Manager (ACM) provided the certificate, or you purchased a certificate from a third-party certificate authority and imported it into ACM or uploaded it to the IAM certificate store.</p> </li> </ul> <p>You must specify one (and only one) of the three values. Do not specify <code>false</code> for <code>CloudFrontDefaultCertificate</code>.</p> <p> <b>If you want viewers to use HTTP to request your objects</b>: Specify the following value:</p> <p> <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code> </p> <p>In addition, specify <code>allow-all</code> for <code>ViewerProtocolPolicy</code> for all of your cache behaviors.</p> <p> <b>If you want viewers to use HTTPS to request your objects</b>: Choose the type of certificate that you want to use based on whether you're using an alternate domain name for your objects or the CloudFront domain name:</p> <ul> <li> <p> <b>If you're using an alternate domain name, such as example.com</b>: Specify one of the following values, depending on whether ACM provided your certificate or you purchased your certificate from third-party certificate authority:</p> <ul> <li> <p> <code>&lt;ACMCertificateArn&gt;ARN for ACM SSL/TLS certificate&lt;ACMCertificateArn&gt;</code> where ARN for ACM SSL/TLS certificate is the ARN for the ACM SSL/TLS certificate that you want to use for this distribution.</p> </li> <li> <p> <code>&lt;IAMCertificateId&gt;IAM certificate ID&lt;IAMCertificateId&gt;</code> where IAM certificate ID is the ID that IAM returned when you added the certificate to the IAM certificate store.</p> </li> </ul> <p>If you specify <code>ACMCertificateArn</code> or <code>IAMCertificateId</code>, you must also specify a value for <code>SSLSupportMethod</code>.</p> <p>If you choose to use an ACM certificate or a certificate in the IAM certificate store, we recommend that you use only an alternate domain name in your object URLs (<code>https://example.com/logo.jpg</code>). If you use the domain name that is associated with your CloudFront distribution (<code>https://d111111abcdef8.cloudfront.net/logo.jpg</code>) and the viewer supports <code>SNI</code>, then CloudFront behaves normally. However, if the browser does not support SNI, the user's experience depends on the value that you choose for <code>SSLSupportMethod</code>:</p> <ul> <li> <p> <code>vip</code>: The viewer displays a warning because there is a mismatch between the CloudFront domain name and the domain name in your SSL/TLS certificate.</p> </li> <li> <p> <code>sni-only</code>: CloudFront drops the connection with the browser without returning the object.</p> </li> </ul> </li> <li> <p> <b>If you're using the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code> </b>: Specify the following value:</p> <p> <code> &lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt; </code> </p> <p>If you want viewers to use HTTPS, you must also specify one of the following values in your cache behaviors:</p> <ul> <li> <p> <code> &lt;ViewerProtocolPolicy&gt;https-only&lt;ViewerProtocolPolicy&gt; </code> </p> </li> <li> <p> <code> &lt;ViewerProtocolPolicy&gt;redirect-to-https&lt;ViewerProtocolPolicy&gt; </code> </p> </li> </ul> <p>You can also optionally require that CloudFront use HTTPS to communicate with your origin by specifying one of the following values for the applicable origins:</p> <ul> <li> <p> <code> &lt;OriginProtocolPolicy&gt;https-only&lt;OriginProtocolPolicy&gt; </code> </p> </li> <li> <p> <code> &lt;OriginProtocolPolicy&gt;match-viewer&lt;OriginProtocolPolicy&gt; </code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </li> </ul>
-- @param _CloudFrontDefaultCertificate [boolean] 
-- @param _ACMCertificateArn [string] 
-- @param _SSLSupportMethod [SSLSupportMethod] <p>If you specify a value for <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code>, you must also specify how you want CloudFront to serve HTTPS requests: using a method that works for all clients or one that works for most clients:</p> <ul> <li> <p> <code>vip</code>: CloudFront uses dedicated IP addresses for your content and can respond to HTTPS requests from any viewer. However, you will incur additional monthly charges.</p> </li> <li> <p> <code>sni-only</code>: CloudFront can respond to HTTPS requests from viewers that support Server Name Indication (SNI). All modern browsers support SNI, but some browsers still in use don't support SNI. If some of your users' browsers don't support SNI, we recommend that you do one of the following:</p> <ul> <li> <p>Use the <code>vip</code> option (dedicated IP addresses) instead of <code>sni-only</code>.</p> </li> <li> <p>Use the CloudFront SSL/TLS certificate instead of a custom certificate. This requires that you use the CloudFront domain name of your distribution in the URLs for your objects, for example, <code>https://d111111abcdef8.cloudfront.net/logo.png</code>.</p> </li> <li> <p>If you can control which browser your users use, upgrade the browser to one that supports SNI.</p> </li> <li> <p>Use HTTP instead of HTTPS.</p> </li> </ul> </li> </ul> <p>Do not specify a value for <code>SSLSupportMethod</code> if you specified <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _IAMCertificateId [string] 
-- @param _CertificateSource [CertificateSource] <note> <p>This field is deprecated. You can use one of the following: <code>[ACMCertificateArn</code>, <code>IAMCertificateId</code>, or <code>CloudFrontDefaultCertificate]</code>.</p> </note>
-- @param _MinimumProtocolVersion [MinimumProtocolVersion] <p>Specify the minimum version of the SSL/TLS protocol that you want CloudFront to use for HTTPS connections between viewers and CloudFront: <code>SSLv3</code> or <code>TLSv1</code>. CloudFront serves your objects only to viewers that support SSL/TLS version that you specify and later versions. The <code>TLSv1</code> protocol is more secure, so we recommend that you specify <code>SSLv3</code> only if your users are using browsers or devices that don't support <code>TLSv1</code>. Note the following:</p> <ul> <li> <p>If you specify &lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;, the minimum SSL protocol version is <code>TLSv1</code> and can't be changed.</p> </li> <li> <p>If you're using a custom certificate (if you specify a value for <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code>) and if you're using SNI (if you specify <code>sni-only</code> for <code>SSLSupportMethod</code>), you must specify <code>TLSv1</code> for <code>MinimumProtocolVersion</code>.</p> </li> </ul>
function M.ViewerCertificate(_Certificate, _CloudFrontDefaultCertificate, _ACMCertificateArn, _SSLSupportMethod, _IAMCertificateId, _CertificateSource, _MinimumProtocolVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ViewerCertificate")
	local t = { 
		["Certificate"] = _Certificate,
		["CloudFrontDefaultCertificate"] = _CloudFrontDefaultCertificate,
		["ACMCertificateArn"] = _ACMCertificateArn,
		["SSLSupportMethod"] = _SSLSupportMethod,
		["IAMCertificateId"] = _IAMCertificateId,
		["CertificateSource"] = _CertificateSource,
		["MinimumProtocolVersion"] = _MinimumProtocolVersion,
	}
	asserts.AssertViewerCertificate(t)
	return t
end

keys.InconsistentQuantities = { ["Message"] = true, nil }

function asserts.AssertInconsistentQuantities(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InconsistentQuantities to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InconsistentQuantities[k], "InconsistentQuantities contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InconsistentQuantities
-- <p>The value of <code>Quantity</code> and the size of <code>Items</code> do not match.</p>
-- @param _Message [string] 
function M.InconsistentQuantities(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InconsistentQuantities")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInconsistentQuantities(t)
	return t
end

keys.StreamingDistribution = { ["Status"] = true, ["DomainName"] = true, ["StreamingDistributionConfig"] = true, ["ActiveTrustedSigners"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ARN"] = true, nil }

function asserts.AssertStreamingDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistribution to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ActiveTrustedSigners"], "Expected key ActiveTrustedSigners to exist in table")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	if struct["ActiveTrustedSigners"] then asserts.AssertActiveTrustedSigners(struct["ActiveTrustedSigners"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistribution[k], "StreamingDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistribution
-- <p>A streaming distribution. </p>
-- @param _Status [string] <p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>
-- @param _DomainName [string] <p>The domain name that corresponds to the streaming distribution. For example: <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>
-- @param _StreamingDistributionConfig [StreamingDistributionConfig] <p>The current configuration information for the RTMP distribution.</p>
-- @param _ActiveTrustedSigners [ActiveTrustedSigners] <p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- @param _LastModifiedTime [timestamp] <p>The date and time that the distribution was last modified. </p>
-- @param _Id [string] <p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>
-- @param _ARN [string] 
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: DomainName
-- Required parameter: ActiveTrustedSigners
-- Required parameter: StreamingDistributionConfig
function M.StreamingDistribution(_Status, _DomainName, _StreamingDistributionConfig, _ActiveTrustedSigners, _LastModifiedTime, _Id, _ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistribution")
	local t = { 
		["Status"] = _Status,
		["DomainName"] = _DomainName,
		["StreamingDistributionConfig"] = _StreamingDistributionConfig,
		["ActiveTrustedSigners"] = _ActiveTrustedSigners,
		["LastModifiedTime"] = _LastModifiedTime,
		["Id"] = _Id,
		["ARN"] = _ARN,
	}
	asserts.AssertStreamingDistribution(t)
	return t
end

keys.InvalidProtocolSettings = { ["Message"] = true, nil }

function asserts.AssertInvalidProtocolSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidProtocolSettings to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidProtocolSettings[k], "InvalidProtocolSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidProtocolSettings
-- <p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>
-- @param _Message [string] 
function M.InvalidProtocolSettings(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidProtocolSettings")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidProtocolSettings(t)
	return t
end

keys.NoSuchOrigin = { ["Message"] = true, nil }

function asserts.AssertNoSuchOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchOrigin to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchOrigin[k], "NoSuchOrigin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchOrigin
-- <p>No origin exists with the specified <code>Origin Id</code>. </p>
-- @param _Message [string] 
function M.NoSuchOrigin(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchOrigin")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNoSuchOrigin(t)
	return t
end

keys.ListCloudFrontOriginAccessIdentitiesRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListCloudFrontOriginAccessIdentitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCloudFrontOriginAccessIdentitiesRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCloudFrontOriginAccessIdentitiesRequest[k], "ListCloudFrontOriginAccessIdentitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCloudFrontOriginAccessIdentitiesRequest
-- <p>The request to list origin access identities. </p>
-- @param _Marker [string] <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>
-- @param _MaxItems [string] <p>The maximum number of origin access identities you want in the response body. </p>
function M.ListCloudFrontOriginAccessIdentitiesRequest(_Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCloudFrontOriginAccessIdentitiesRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListCloudFrontOriginAccessIdentitiesRequest(t)
	return t
end

keys.GetStreamingDistributionConfigResult = { ["ETag"] = true, ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertGetStreamingDistributionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionConfigResult to be of type 'table'")
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionConfigResult[k], "GetStreamingDistributionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionConfigResult
-- <p>The returned result of the corresponding request.</p>
-- @param _ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>
-- @param _StreamingDistributionConfig [StreamingDistributionConfig] <p>The streaming distribution's configuration information.</p>
function M.GetStreamingDistributionConfigResult(_ETag, _StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionConfigResult")
	local t = { 
		["ETag"] = _ETag,
		["StreamingDistributionConfig"] = _StreamingDistributionConfig,
	}
	asserts.AssertGetStreamingDistributionConfigResult(t)
	return t
end

keys.DistributionAlreadyExists = { ["Message"] = true, nil }

function asserts.AssertDistributionAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionAlreadyExists[k], "DistributionAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionAlreadyExists
-- <p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>
-- @param _Message [string] 
function M.DistributionAlreadyExists(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionAlreadyExists")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDistributionAlreadyExists(t)
	return t
end

keys.CreateDistributionResult = { ["Distribution"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionResult[k], "CreateDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param _Distribution [Distribution] <p>The distribution's information.</p>
-- @param _ETag [string] <p>The current version of the distribution created.</p>
-- @param _Location [string] <p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>.</p>
function M.CreateDistributionResult(_Distribution, _ETag, _Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionResult")
	local t = { 
		["Distribution"] = _Distribution,
		["ETag"] = _ETag,
		["Location"] = _Location,
	}
	asserts.AssertCreateDistributionResult(t)
	return t
end

keys.InvalidOriginReadTimeout = { ["Message"] = true, nil }

function asserts.AssertInvalidOriginReadTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOriginReadTimeout to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOriginReadTimeout[k], "InvalidOriginReadTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOriginReadTimeout
--  
-- @param _Message [string] 
function M.InvalidOriginReadTimeout(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOriginReadTimeout")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidOriginReadTimeout(t)
	return t
end

keys.InvalidationSummary = { ["Status"] = true, ["Id"] = true, ["CreateTime"] = true, nil }

function asserts.AssertInvalidationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["CreateTime"], "Expected key CreateTime to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["CreateTime"] then asserts.Asserttimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidationSummary[k], "InvalidationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationSummary
-- <p>A summary of an invalidation request.</p>
-- @param _Status [string] <p>The status of an invalidation request.</p>
-- @param _Id [string] <p>The unique ID for an invalidation request.</p>
-- @param _CreateTime [timestamp] 
-- Required parameter: Id
-- Required parameter: CreateTime
-- Required parameter: Status
function M.InvalidationSummary(_Status, _Id, _CreateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidationSummary")
	local t = { 
		["Status"] = _Status,
		["Id"] = _Id,
		["CreateTime"] = _CreateTime,
	}
	asserts.AssertInvalidationSummary(t)
	return t
end

keys.InvalidResponseCode = { ["Message"] = true, nil }

function asserts.AssertInvalidResponseCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResponseCode to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResponseCode[k], "InvalidResponseCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResponseCode
--  
-- @param _Message [string] 
function M.InvalidResponseCode(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResponseCode")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidResponseCode(t)
	return t
end

keys.DistributionList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertDistributionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertDistributionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionList[k], "DistributionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionList
-- <p>A distribution list.</p>
-- @param _Items [DistributionSummaryList] <p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current AWS account.</p>
-- @param _NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off. </p>
-- @param _MaxItems [integer] <p>The value you provided for the <code>MaxItems</code> request parameter.</p>
-- @param _Marker [string] <p>The value you provided for the <code>Marker</code> request parameter.</p>
-- @param _IsTruncated [boolean] <p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>
-- @param _Quantity [integer] <p>The number of distributions that were created by the current AWS account. </p>
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.DistributionList(_Items, _NextMarker, _MaxItems, _Marker, _IsTruncated, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionList")
	local t = { 
		["Items"] = _Items,
		["NextMarker"] = _NextMarker,
		["MaxItems"] = _MaxItems,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Quantity"] = _Quantity,
	}
	asserts.AssertDistributionList(t)
	return t
end

keys.StreamingDistributionSummary = { ["Status"] = true, ["S3Origin"] = true, ["DomainName"] = true, ["Enabled"] = true, ["PriceClass"] = true, ["TrustedSigners"] = true, ["Comment"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ARN"] = true, ["Aliases"] = true, nil }

function asserts.AssertStreamingDistributionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["S3Origin"], "Expected key S3Origin to exist in table")
	assert(struct["Aliases"], "Expected key Aliases to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["PriceClass"], "Expected key PriceClass to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["S3Origin"] then asserts.AssertS3Origin(struct["S3Origin"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionSummary[k], "StreamingDistributionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionSummary
-- <p> A summary of the information for an Amazon CloudFront streaming distribution.</p>
-- @param _Status [string] <p> Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>
-- @param _S3Origin [S3Origin] <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
-- @param _DomainName [string] <p>The domain name corresponding to the distribution. For example: <code>d604721fxaaqy9.cloudfront.net</code>.</p>
-- @param _Enabled [boolean] <p>Whether the distribution is enabled to accept end user requests for content.</p>
-- @param _PriceClass [PriceClass] 
-- @param _TrustedSigners [TrustedSigners] <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>
-- @param _Comment [string] <p>The comment originally specified when this distribution was created.</p>
-- @param _LastModifiedTime [timestamp] <p>The date and time the distribution was last modified.</p>
-- @param _Id [string] <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>
-- @param _ARN [string] <p> The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>
-- @param _Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: LastModifiedTime
-- Required parameter: DomainName
-- Required parameter: S3Origin
-- Required parameter: Aliases
-- Required parameter: TrustedSigners
-- Required parameter: Comment
-- Required parameter: PriceClass
-- Required parameter: Enabled
function M.StreamingDistributionSummary(_Status, _S3Origin, _DomainName, _Enabled, _PriceClass, _TrustedSigners, _Comment, _LastModifiedTime, _Id, _ARN, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionSummary")
	local t = { 
		["Status"] = _Status,
		["S3Origin"] = _S3Origin,
		["DomainName"] = _DomainName,
		["Enabled"] = _Enabled,
		["PriceClass"] = _PriceClass,
		["TrustedSigners"] = _TrustedSigners,
		["Comment"] = _Comment,
		["LastModifiedTime"] = _LastModifiedTime,
		["Id"] = _Id,
		["ARN"] = _ARN,
		["Aliases"] = _Aliases,
	}
	asserts.AssertStreamingDistributionSummary(t)
	return t
end

keys.GetDistributionConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetDistributionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionConfigRequest[k], "GetDistributionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionConfigRequest
-- <p>The request to get a distribution configuration.</p>
-- @param _Id [string] <p>The distribution's ID.</p>
-- Required parameter: Id
function M.GetDistributionConfigRequest(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionConfigRequest")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertGetDistributionConfigRequest(t)
	return t
end

keys.TooManyCertificates = { ["Message"] = true, nil }

function asserts.AssertTooManyCertificates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCertificates to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyCertificates[k], "TooManyCertificates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCertificates
-- <p>You cannot create anymore custom SSL/TLS certificates.</p>
-- @param _Message [string] 
function M.TooManyCertificates(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCertificates")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyCertificates(t)
	return t
end

keys.PreconditionFailed = { ["Message"] = true, nil }

function asserts.AssertPreconditionFailed(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionFailed to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PreconditionFailed[k], "PreconditionFailed contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionFailed
-- <p>The precondition given in one or more of the request-header fields evaluated to <code>false</code>. </p>
-- @param _Message [string] 
function M.PreconditionFailed(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreconditionFailed")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPreconditionFailed(t)
	return t
end

keys.Origins = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertOrigins(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Origins to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertOriginList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Origins[k], "Origins contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Origins
-- <p>A complex type that contains information about origins for this distribution. </p>
-- @param _Items [OriginList] <p>A complex type that contains origins for this distribution.</p>
-- @param _Quantity [integer] <p>The number of origins for this distribution.</p>
-- Required parameter: Quantity
function M.Origins(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Origins")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertOrigins(t)
	return t
end

keys.GetInvalidationResult = { ["Invalidation"] = true, nil }

function asserts.AssertGetInvalidationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvalidationResult to be of type 'table'")
	if struct["Invalidation"] then asserts.AssertInvalidation(struct["Invalidation"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInvalidationResult[k], "GetInvalidationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvalidationResult
-- <p>The returned result of the corresponding request.</p>
-- @param _Invalidation [Invalidation] <p>The invalidation's information. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html">Invalidation Complex Type</a>. </p>
function M.GetInvalidationResult(_Invalidation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInvalidationResult")
	local t = { 
		["Invalidation"] = _Invalidation,
	}
	asserts.AssertGetInvalidationResult(t)
	return t
end

keys.TooManyStreamingDistributions = { ["Message"] = true, nil }

function asserts.AssertTooManyStreamingDistributions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyStreamingDistributions to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyStreamingDistributions[k], "TooManyStreamingDistributions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyStreamingDistributions
-- <p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>
-- @param _Message [string] 
function M.TooManyStreamingDistributions(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyStreamingDistributions")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyStreamingDistributions(t)
	return t
end

keys.CookieNames = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCookieNames(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CookieNames to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCookieNameList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CookieNames[k], "CookieNames contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CookieNames
-- <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Items [CookieNameList] <p>A complex type that contains one <code>Name</code> element for each cookie that you want CloudFront to forward to the origin for this cache behavior.</p>
-- @param _Quantity [integer] <p>The number of different cookies that you want CloudFront to forward to the origin for this cache behavior.</p>
-- Required parameter: Quantity
function M.CookieNames(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CookieNames")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertCookieNames(t)
	return t
end

keys.ListDistributionsByWebACLIdResult = { ["DistributionList"] = true, nil }

function asserts.AssertListDistributionsByWebACLIdResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsByWebACLIdResult to be of type 'table'")
	if struct["DistributionList"] then asserts.AssertDistributionList(struct["DistributionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsByWebACLIdResult[k], "ListDistributionsByWebACLIdResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsByWebACLIdResult
-- <p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>
-- @param _DistributionList [DistributionList] <p>The <code>DistributionList</code> type. </p>
function M.ListDistributionsByWebACLIdResult(_DistributionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsByWebACLIdResult")
	local t = { 
		["DistributionList"] = _DistributionList,
	}
	asserts.AssertListDistributionsByWebACLIdResult(t)
	return t
end

keys.Signer = { ["KeyPairIds"] = true, ["AwsAccountNumber"] = true, nil }

function asserts.AssertSigner(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Signer to be of type 'table'")
	if struct["KeyPairIds"] then asserts.AssertKeyPairIds(struct["KeyPairIds"]) end
	if struct["AwsAccountNumber"] then asserts.Assertstring(struct["AwsAccountNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.Signer[k], "Signer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Signer
-- <p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>
-- @param _KeyPairIds [KeyPairIds] <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p>
-- @param _AwsAccountNumber [string] <p>An AWS account that is included in the <code>TrustedSigners</code> complex type for this RTMP distribution. Valid values include:</p> <ul> <li> <p> <code>self</code>, which is the AWS account used to create the distribution.</p> </li> <li> <p>An AWS account number.</p> </li> </ul>
function M.Signer(_KeyPairIds, _AwsAccountNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Signer")
	local t = { 
		["KeyPairIds"] = _KeyPairIds,
		["AwsAccountNumber"] = _AwsAccountNumber,
	}
	asserts.AssertSigner(t)
	return t
end

keys.Distribution = { ["Status"] = true, ["DomainName"] = true, ["InProgressInvalidationBatches"] = true, ["DistributionConfig"] = true, ["ActiveTrustedSigners"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ARN"] = true, nil }

function asserts.AssertDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Distribution to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["InProgressInvalidationBatches"], "Expected key InProgressInvalidationBatches to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ActiveTrustedSigners"], "Expected key ActiveTrustedSigners to exist in table")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["InProgressInvalidationBatches"] then asserts.Assertinteger(struct["InProgressInvalidationBatches"]) end
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["ActiveTrustedSigners"] then asserts.AssertActiveTrustedSigners(struct["ActiveTrustedSigners"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Distribution[k], "Distribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Distribution
-- <p>The distribution's information.</p>
-- @param _Status [string] <p>This response element indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations. </p>
-- @param _DomainName [string] <p>The domain name corresponding to the distribution. For example: <code>d604721fxaaqy9.cloudfront.net</code>. </p>
-- @param _InProgressInvalidationBatches [integer] <p>The number of invalidation batches currently in progress. </p>
-- @param _DistributionConfig [DistributionConfig] <p>The current configuration information for the distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code> resource.</p>
-- @param _ActiveTrustedSigners [ActiveTrustedSigners] <p>CloudFront automatically adds this element to the response only if you've set up the distribution to serve private content with signed URLs. The element lists the key pair IDs that CloudFront is aware of for each trusted signer. The <code>Signer</code> child element lists the AWS account number of the trusted signer (or an empty <code>Self</code> element if the signer is you). The <code>Signer</code> element also includes the IDs of any active key pairs associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create working signed URLs.</p>
-- @param _LastModifiedTime [timestamp] <p>The date and time the distribution was last modified. </p>
-- @param _Id [string] <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>. </p>
-- @param _ARN [string] <p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: LastModifiedTime
-- Required parameter: InProgressInvalidationBatches
-- Required parameter: DomainName
-- Required parameter: ActiveTrustedSigners
-- Required parameter: DistributionConfig
function M.Distribution(_Status, _DomainName, _InProgressInvalidationBatches, _DistributionConfig, _ActiveTrustedSigners, _LastModifiedTime, _Id, _ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Distribution")
	local t = { 
		["Status"] = _Status,
		["DomainName"] = _DomainName,
		["InProgressInvalidationBatches"] = _InProgressInvalidationBatches,
		["DistributionConfig"] = _DistributionConfig,
		["ActiveTrustedSigners"] = _ActiveTrustedSigners,
		["LastModifiedTime"] = _LastModifiedTime,
		["Id"] = _Id,
		["ARN"] = _ARN,
	}
	asserts.AssertDistribution(t)
	return t
end

keys.InvalidOriginAccessIdentity = { ["Message"] = true, nil }

function asserts.AssertInvalidOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOriginAccessIdentity to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOriginAccessIdentity[k], "InvalidOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOriginAccessIdentity
-- <p>The origin access identity is not valid or doesn't exist.</p>
-- @param _Message [string] 
function M.InvalidOriginAccessIdentity(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOriginAccessIdentity")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidOriginAccessIdentity(t)
	return t
end

keys.InvalidDefaultRootObject = { ["Message"] = true, nil }

function asserts.AssertInvalidDefaultRootObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDefaultRootObject to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDefaultRootObject[k], "InvalidDefaultRootObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDefaultRootObject
-- <p>The default root object file name is too big or contains an invalid character.</p>
-- @param _Message [string] 
function M.InvalidDefaultRootObject(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDefaultRootObject")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidDefaultRootObject(t)
	return t
end

keys.CloudFrontOriginAccessIdentityInUse = { ["Message"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentityInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityInUse to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentityInUse[k], "CloudFrontOriginAccessIdentityInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityInUse
--  
-- @param _Message [string] 
function M.CloudFrontOriginAccessIdentityInUse(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityInUse")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCloudFrontOriginAccessIdentityInUse(t)
	return t
end

keys.TrustedSigners = { ["Items"] = true, ["Enabled"] = true, ["Quantity"] = true, nil }

function asserts.AssertTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedSigners to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertAwsAccountNumberList(struct["Items"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedSigners[k], "TrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedSigners
-- <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>
-- @param _Items [AwsAccountNumberList] <p> <b>Optional</b>: A complex type that contains trusted signers for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- @param _Enabled [boolean] <p>Specifies whether you want to require viewers to use signed URLs to access the files specified by <code>PathPattern</code> and <code>TargetOriginId</code>.</p>
-- @param _Quantity [integer] <p>The number of trusted signers for this cache behavior.</p>
-- Required parameter: Enabled
-- Required parameter: Quantity
function M.TrustedSigners(_Items, _Enabled, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedSigners")
	local t = { 
		["Items"] = _Items,
		["Enabled"] = _Enabled,
		["Quantity"] = _Quantity,
	}
	asserts.AssertTrustedSigners(t)
	return t
end

keys.TooManyOrigins = { ["Message"] = true, nil }

function asserts.AssertTooManyOrigins(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyOrigins to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyOrigins[k], "TooManyOrigins contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyOrigins
-- <p>You cannot create more origins for the distribution.</p>
-- @param _Message [string] 
function M.TooManyOrigins(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyOrigins")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyOrigins(t)
	return t
end

keys.CloudFrontOriginAccessIdentitySummary = { ["Comment"] = true, ["S3CanonicalUserId"] = true, ["Id"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentitySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentitySummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["S3CanonicalUserId"], "Expected key S3CanonicalUserId to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["S3CanonicalUserId"] then asserts.Assertstring(struct["S3CanonicalUserId"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentitySummary[k], "CloudFrontOriginAccessIdentitySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentitySummary
-- <p>Summary of the information about a CloudFront origin access identity.</p>
-- @param _Comment [string] <p>The comment for this origin access identity, as originally specified when created.</p>
-- @param _S3CanonicalUserId [string] <p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>
-- @param _Id [string] <p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>
-- Required parameter: Id
-- Required parameter: S3CanonicalUserId
-- Required parameter: Comment
function M.CloudFrontOriginAccessIdentitySummary(_Comment, _S3CanonicalUserId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentitySummary")
	local t = { 
		["Comment"] = _Comment,
		["S3CanonicalUserId"] = _S3CanonicalUserId,
		["Id"] = _Id,
	}
	asserts.AssertCloudFrontOriginAccessIdentitySummary(t)
	return t
end

keys.CreateDistributionRequest = { ["DistributionConfig"] = true, nil }

function asserts.AssertCreateDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionRequest to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionRequest[k], "CreateDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionRequest
-- <p>The request to create a new distribution.</p>
-- @param _DistributionConfig [DistributionConfig] <p>The distribution's configuration information.</p>
-- Required parameter: DistributionConfig
function M.CreateDistributionRequest(_DistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionRequest")
	local t = { 
		["DistributionConfig"] = _DistributionConfig,
	}
	asserts.AssertCreateDistributionRequest(t)
	return t
end

keys.UntagResourceRequest = { ["TagKeys"] = true, ["Resource"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	if struct["Resource"] then asserts.AssertResourceARN(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
-- <p> The request to remove tags from a CloudFront resource.</p>
-- @param _TagKeys [TagKeys] <p> A complex type that contains zero or more <code>Tag</code> key elements.</p>
-- @param _Resource [ResourceARN] <p> An ARN of a CloudFront resource.</p>
-- Required parameter: Resource
-- Required parameter: TagKeys
function M.UntagResourceRequest(_TagKeys, _Resource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["TagKeys"] = _TagKeys,
		["Resource"] = _Resource,
	}
	asserts.AssertUntagResourceRequest(t)
	return t
end

keys.CloudFrontOriginAccessIdentityAlreadyExists = { ["Message"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentityAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentityAlreadyExists[k], "CloudFrontOriginAccessIdentityAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityAlreadyExists
-- <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
-- @param _Message [string] 
function M.CloudFrontOriginAccessIdentityAlreadyExists(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityAlreadyExists")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCloudFrontOriginAccessIdentityAlreadyExists(t)
	return t
end

keys.InvalidTagging = { ["Message"] = true, nil }

function asserts.AssertInvalidTagging(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagging to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagging[k], "InvalidTagging contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagging
--  
-- @param _Message [string] 
function M.InvalidTagging(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagging")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidTagging(t)
	return t
end

keys.Aliases = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertAliases(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Aliases to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertAliasList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Aliases[k], "Aliases contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Aliases
-- <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>
-- @param _Items [AliasList] <p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>
-- @param _Quantity [integer] <p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>
-- Required parameter: Quantity
function M.Aliases(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Aliases")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertAliases(t)
	return t
end

keys.Invalidation = { ["Status"] = true, ["InvalidationBatch"] = true, ["Id"] = true, ["CreateTime"] = true, nil }

function asserts.AssertInvalidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Invalidation to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["CreateTime"], "Expected key CreateTime to exist in table")
	assert(struct["InvalidationBatch"], "Expected key InvalidationBatch to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["InvalidationBatch"] then asserts.AssertInvalidationBatch(struct["InvalidationBatch"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["CreateTime"] then asserts.Asserttimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Invalidation[k], "Invalidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Invalidation
-- <p>An invalidation. </p>
-- @param _Status [string] <p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>
-- @param _InvalidationBatch [InvalidationBatch] <p>The current invalidation information for the batch request. </p>
-- @param _Id [string] <p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>
-- @param _CreateTime [timestamp] <p>The date and time the invalidation request was first made. </p>
-- Required parameter: Id
-- Required parameter: Status
-- Required parameter: CreateTime
-- Required parameter: InvalidationBatch
function M.Invalidation(_Status, _InvalidationBatch, _Id, _CreateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Invalidation")
	local t = { 
		["Status"] = _Status,
		["InvalidationBatch"] = _InvalidationBatch,
		["Id"] = _Id,
		["CreateTime"] = _CreateTime,
	}
	asserts.AssertInvalidation(t)
	return t
end

keys.InvalidHeadersForS3Origin = { ["Message"] = true, nil }

function asserts.AssertInvalidHeadersForS3Origin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHeadersForS3Origin to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidHeadersForS3Origin[k], "InvalidHeadersForS3Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHeadersForS3Origin
--  
-- @param _Message [string] 
function M.InvalidHeadersForS3Origin(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHeadersForS3Origin")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidHeadersForS3Origin(t)
	return t
end

keys.ListStreamingDistributionsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListStreamingDistributionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamingDistributionsRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamingDistributionsRequest[k], "ListStreamingDistributionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamingDistributionsRequest
-- <p>The request to list your streaming distributions. </p>
-- @param _Marker [string] <p>The value that you provided for the <code>Marker</code> request parameter.</p>
-- @param _MaxItems [string] <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
function M.ListStreamingDistributionsRequest(_Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamingDistributionsRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListStreamingDistributionsRequest(t)
	return t
end

keys.LambdaFunctionAssociations = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertLambdaFunctionAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionAssociations to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertLambdaFunctionAssociationList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionAssociations[k], "LambdaFunctionAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionAssociations
-- <p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>
-- @param _Items [LambdaFunctionAssociationList] <p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- @param _Quantity [integer] <p>The number of Lambda function associations for this cache behavior.</p>
-- Required parameter: Quantity
function M.LambdaFunctionAssociations(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionAssociations")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertLambdaFunctionAssociations(t)
	return t
end

keys.NoSuchResource = { ["Message"] = true, nil }

function asserts.AssertNoSuchResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchResource to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchResource[k], "NoSuchResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchResource
--  
-- @param _Message [string] 
function M.NoSuchResource(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchResource")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNoSuchResource(t)
	return t
end

keys.ListTagsForResourceRequest = { ["Resource"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	if struct["Resource"] then asserts.AssertResourceARN(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
-- <p> The request to list tags for a CloudFront resource.</p>
-- @param _Resource [ResourceARN] <p> An ARN of a CloudFront resource.</p>
-- Required parameter: Resource
function M.ListTagsForResourceRequest(_Resource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["Resource"] = _Resource,
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.CreateInvalidationResult = { ["Invalidation"] = true, ["Location"] = true, nil }

function asserts.AssertCreateInvalidationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInvalidationResult to be of type 'table'")
	if struct["Invalidation"] then asserts.AssertInvalidation(struct["Invalidation"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInvalidationResult[k], "CreateInvalidationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInvalidationResult
-- <p>The returned result of the corresponding request.</p>
-- @param _Invalidation [Invalidation] <p>The invalidation's information.</p>
-- @param _Location [string] <p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>
function M.CreateInvalidationResult(_Invalidation, _Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInvalidationResult")
	local t = { 
		["Invalidation"] = _Invalidation,
		["Location"] = _Location,
	}
	asserts.AssertCreateInvalidationResult(t)
	return t
end

keys.CacheBehaviors = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCacheBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheBehaviors to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCacheBehaviorList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheBehaviors[k], "CacheBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheBehaviors
-- <p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>
-- @param _Items [CacheBehaviorList] <p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- @param _Quantity [integer] <p>The number of cache behaviors for this distribution. </p>
-- Required parameter: Quantity
function M.CacheBehaviors(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheBehaviors")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertCacheBehaviors(t)
	return t
end

keys.TagKeys = { ["Items"] = true, nil }

function asserts.AssertTagKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagKeys to be of type 'table'")
	if struct["Items"] then asserts.AssertTagKeyList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagKeys[k], "TagKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagKeys
-- <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- @param _Items [TagKeyList] <p> A complex type that contains <code>Tag</code> key elements.</p>
function M.TagKeys(_Items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagKeys")
	local t = { 
		["Items"] = _Items,
	}
	asserts.AssertTagKeys(t)
	return t
end

keys.OriginCustomHeader = { ["HeaderName"] = true, ["HeaderValue"] = true, nil }

function asserts.AssertOriginCustomHeader(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginCustomHeader to be of type 'table'")
	assert(struct["HeaderName"], "Expected key HeaderName to exist in table")
	assert(struct["HeaderValue"], "Expected key HeaderValue to exist in table")
	if struct["HeaderName"] then asserts.Assertstring(struct["HeaderName"]) end
	if struct["HeaderValue"] then asserts.Assertstring(struct["HeaderValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.OriginCustomHeader[k], "OriginCustomHeader contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginCustomHeader
-- <p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>
-- @param _HeaderName [string] <p>The name of a header that you want CloudFront to forward to your origin. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html">Forwarding Custom Headers to Your Origin (Web Distributions Only)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
-- @param _HeaderValue [string] <p>The value for the header that you specified in the <code>HeaderName</code> field.</p>
-- Required parameter: HeaderName
-- Required parameter: HeaderValue
function M.OriginCustomHeader(_HeaderName, _HeaderValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OriginCustomHeader")
	local t = { 
		["HeaderName"] = _HeaderName,
		["HeaderValue"] = _HeaderValue,
	}
	asserts.AssertOriginCustomHeader(t)
	return t
end

keys.Tags = { ["Items"] = true, nil }

function asserts.AssertTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tags to be of type 'table'")
	if struct["Items"] then asserts.AssertTagList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tags[k], "Tags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tags
-- <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- @param _Items [TagList] <p> A complex type that contains <code>Tag</code> elements.</p>
function M.Tags(_Items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tags")
	local t = { 
		["Items"] = _Items,
	}
	asserts.AssertTags(t)
	return t
end

keys.CloudFrontOriginAccessIdentityList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentityList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCloudFrontOriginAccessIdentitySummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentityList[k], "CloudFrontOriginAccessIdentityList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityList
-- <p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
-- @param _Items [CloudFrontOriginAccessIdentitySummaryList] <p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current AWS account.</p>
-- @param _NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off. </p>
-- @param _MaxItems [integer] <p>The maximum number of origin access identities you want in the response body. </p>
-- @param _Marker [string] <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page). </p>
-- @param _IsTruncated [boolean] <p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>
-- @param _Quantity [integer] <p>The number of CloudFront origin access identities that were created by the current AWS account. </p>
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.CloudFrontOriginAccessIdentityList(_Items, _NextMarker, _MaxItems, _Marker, _IsTruncated, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityList")
	local t = { 
		["Items"] = _Items,
		["NextMarker"] = _NextMarker,
		["MaxItems"] = _MaxItems,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Quantity"] = _Quantity,
	}
	asserts.AssertCloudFrontOriginAccessIdentityList(t)
	return t
end

keys.InvalidGeoRestrictionParameter = { ["Message"] = true, nil }

function asserts.AssertInvalidGeoRestrictionParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGeoRestrictionParameter to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGeoRestrictionParameter[k], "InvalidGeoRestrictionParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGeoRestrictionParameter
--  
-- @param _Message [string] 
function M.InvalidGeoRestrictionParameter(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGeoRestrictionParameter")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidGeoRestrictionParameter(t)
	return t
end

keys.NoSuchInvalidation = { ["Message"] = true, nil }

function asserts.AssertNoSuchInvalidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchInvalidation to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchInvalidation[k], "NoSuchInvalidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchInvalidation
-- <p>The specified invalidation does not exist.</p>
-- @param _Message [string] 
function M.NoSuchInvalidation(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchInvalidation")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNoSuchInvalidation(t)
	return t
end

keys.InvalidIfMatchVersion = { ["Message"] = true, nil }

function asserts.AssertInvalidIfMatchVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIfMatchVersion to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidIfMatchVersion[k], "InvalidIfMatchVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIfMatchVersion
-- <p>The <code>If-Match</code> version is missing or not valid for the distribution.</p>
-- @param _Message [string] 
function M.InvalidIfMatchVersion(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIfMatchVersion")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidIfMatchVersion(t)
	return t
end

keys.TagResourceRequest = { ["Resource"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Resource"] then asserts.AssertResourceARN(struct["Resource"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
-- <p> The request to add tags to a CloudFront resource.</p>
-- @param _Resource [ResourceARN] <p> An ARN of a CloudFront resource.</p>
-- @param _Tags [Tags] <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- Required parameter: Resource
-- Required parameter: Tags
function M.TagResourceRequest(_Resource, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["Resource"] = _Resource,
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceRequest(t)
	return t
end

keys.GetDistributionConfigResult = { ["ETag"] = true, ["DistributionConfig"] = true, nil }

function asserts.AssertGetDistributionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionConfigResult to be of type 'table'")
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionConfigResult[k], "GetDistributionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionConfigResult
-- <p>The returned result of the corresponding request.</p>
-- @param _ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @param _DistributionConfig [DistributionConfig] <p>The distribution's configuration information.</p>
function M.GetDistributionConfigResult(_ETag, _DistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionConfigResult")
	local t = { 
		["ETag"] = _ETag,
		["DistributionConfig"] = _DistributionConfig,
	}
	asserts.AssertGetDistributionConfigResult(t)
	return t
end

keys.CreateStreamingDistributionRequest = { ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertCreateStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionRequest[k], "CreateStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionRequest
-- <p>The request to create a new streaming distribution.</p>
-- @param _StreamingDistributionConfig [StreamingDistributionConfig] <p>The streaming distribution's configuration information.</p>
-- Required parameter: StreamingDistributionConfig
function M.CreateStreamingDistributionRequest(_StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionRequest")
	local t = { 
		["StreamingDistributionConfig"] = _StreamingDistributionConfig,
	}
	asserts.AssertCreateStreamingDistributionRequest(t)
	return t
end

keys.InvalidQueryStringParameters = { ["Message"] = true, nil }

function asserts.AssertInvalidQueryStringParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidQueryStringParameters to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidQueryStringParameters[k], "InvalidQueryStringParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidQueryStringParameters
--  
-- @param _Message [string] 
function M.InvalidQueryStringParameters(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidQueryStringParameters")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidQueryStringParameters(t)
	return t
end

keys.CreateStreamingDistributionWithTagsResult = { ["StreamingDistribution"] = true, ["Location"] = true, ["ETag"] = true, nil }

function asserts.AssertCreateStreamingDistributionWithTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionWithTagsResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionWithTagsResult[k], "CreateStreamingDistributionWithTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionWithTagsResult
-- <p>The returned result of the corresponding request. </p>
-- @param _StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information. </p>
-- @param _Location [string] <p>The fully qualified URI of the new streaming distribution resource just created. For example:<code> https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>
-- @param _ETag [string] 
function M.CreateStreamingDistributionWithTagsResult(_StreamingDistribution, _Location, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionWithTagsResult")
	local t = { 
		["StreamingDistribution"] = _StreamingDistribution,
		["Location"] = _Location,
		["ETag"] = _ETag,
	}
	asserts.AssertCreateStreamingDistributionWithTagsResult(t)
	return t
end

keys.ListDistributionsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListDistributionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsRequest[k], "ListDistributionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsRequest
-- <p>The request to list your distributions. </p>
-- @param _Marker [string] <p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>
-- @param _MaxItems [string] <p>The maximum number of distributions you want in the response body.</p>
function M.ListDistributionsRequest(_Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListDistributionsRequest(t)
	return t
end

keys.StreamingDistributionList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertStreamingDistributionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertStreamingDistributionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionList[k], "StreamingDistributionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionList
-- <p>A streaming distribution list. </p>
-- @param _Items [StreamingDistributionSummaryList] <p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current AWS account.</p>
-- @param _NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off. </p>
-- @param _MaxItems [integer] <p>The value you provided for the <code>MaxItems</code> request parameter. </p>
-- @param _Marker [string] <p>The value you provided for the <code>Marker</code> request parameter. </p>
-- @param _IsTruncated [boolean] <p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>
-- @param _Quantity [integer] <p>The number of streaming distributions that were created by the current AWS account. </p>
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.StreamingDistributionList(_Items, _NextMarker, _MaxItems, _Marker, _IsTruncated, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionList")
	local t = { 
		["Items"] = _Items,
		["NextMarker"] = _NextMarker,
		["MaxItems"] = _MaxItems,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Quantity"] = _Quantity,
	}
	asserts.AssertStreamingDistributionList(t)
	return t
end

keys.GetStreamingDistributionConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetStreamingDistributionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionConfigRequest[k], "GetStreamingDistributionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionConfigRequest
-- <p>To request to get a streaming distribution configuration.</p>
-- @param _Id [string] <p>The streaming distribution's ID.</p>
-- Required parameter: Id
function M.GetStreamingDistributionConfigRequest(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionConfigRequest")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertGetStreamingDistributionConfigRequest(t)
	return t
end

keys.Restrictions = { ["GeoRestriction"] = true, nil }

function asserts.AssertRestrictions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Restrictions to be of type 'table'")
	assert(struct["GeoRestriction"], "Expected key GeoRestriction to exist in table")
	if struct["GeoRestriction"] then asserts.AssertGeoRestriction(struct["GeoRestriction"]) end
	for k,_ in pairs(struct) do
		assert(keys.Restrictions[k], "Restrictions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Restrictions
-- <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
-- @param _GeoRestriction [GeoRestriction] 
-- Required parameter: GeoRestriction
function M.Restrictions(_GeoRestriction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Restrictions")
	local t = { 
		["GeoRestriction"] = _GeoRestriction,
	}
	asserts.AssertRestrictions(t)
	return t
end

keys.InvalidViewerCertificate = { ["Message"] = true, nil }

function asserts.AssertInvalidViewerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidViewerCertificate to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidViewerCertificate[k], "InvalidViewerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidViewerCertificate
--  
-- @param _Message [string] 
function M.InvalidViewerCertificate(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidViewerCertificate")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidViewerCertificate(t)
	return t
end

keys.TooManyStreamingDistributionCNAMEs = { ["Message"] = true, nil }

function asserts.AssertTooManyStreamingDistributionCNAMEs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyStreamingDistributionCNAMEs to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyStreamingDistributionCNAMEs[k], "TooManyStreamingDistributionCNAMEs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyStreamingDistributionCNAMEs
--  
-- @param _Message [string] 
function M.TooManyStreamingDistributionCNAMEs(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyStreamingDistributionCNAMEs")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyStreamingDistributionCNAMEs(t)
	return t
end

keys.TrustedSignerDoesNotExist = { ["Message"] = true, nil }

function asserts.AssertTrustedSignerDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedSignerDoesNotExist to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedSignerDoesNotExist[k], "TrustedSignerDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedSignerDoesNotExist
-- <p>One or more of your trusted signers do not exist.</p>
-- @param _Message [string] 
function M.TrustedSignerDoesNotExist(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedSignerDoesNotExist")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTrustedSignerDoesNotExist(t)
	return t
end

keys.TooManyOriginCustomHeaders = { ["Message"] = true, nil }

function asserts.AssertTooManyOriginCustomHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyOriginCustomHeaders to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyOriginCustomHeaders[k], "TooManyOriginCustomHeaders contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyOriginCustomHeaders
--  
-- @param _Message [string] 
function M.TooManyOriginCustomHeaders(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyOriginCustomHeaders")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyOriginCustomHeaders(t)
	return t
end

keys.ListDistributionsResult = { ["DistributionList"] = true, nil }

function asserts.AssertListDistributionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsResult to be of type 'table'")
	if struct["DistributionList"] then asserts.AssertDistributionList(struct["DistributionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsResult[k], "ListDistributionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsResult
-- <p>The returned result of the corresponding request. </p>
-- @param _DistributionList [DistributionList] <p>The <code>DistributionList</code> type. </p>
function M.ListDistributionsResult(_DistributionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsResult")
	local t = { 
		["DistributionList"] = _DistributionList,
	}
	asserts.AssertListDistributionsResult(t)
	return t
end

keys.InvalidationBatch = { ["Paths"] = true, ["CallerReference"] = true, nil }

function asserts.AssertInvalidationBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationBatch to be of type 'table'")
	assert(struct["Paths"], "Expected key Paths to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["Paths"] then asserts.AssertPaths(struct["Paths"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidationBatch[k], "InvalidationBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationBatch
-- <p>An invalidation batch.</p>
-- @param _Paths [Paths] <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- @param _CallerReference [string] <p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>
-- Required parameter: Paths
-- Required parameter: CallerReference
function M.InvalidationBatch(_Paths, _CallerReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidationBatch")
	local t = { 
		["Paths"] = _Paths,
		["CallerReference"] = _CallerReference,
	}
	asserts.AssertInvalidationBatch(t)
	return t
end

keys.GetDistributionResult = { ["Distribution"] = true, ["ETag"] = true, nil }

function asserts.AssertGetDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionResult[k], "GetDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param _Distribution [Distribution] <p>The distribution's information.</p>
-- @param _ETag [string] <p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.GetDistributionResult(_Distribution, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionResult")
	local t = { 
		["Distribution"] = _Distribution,
		["ETag"] = _ETag,
	}
	asserts.AssertGetDistributionResult(t)
	return t
end

keys.UpdateStreamingDistributionRequest = { ["IfMatch"] = true, ["Id"] = true, ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertUpdateStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamingDistributionRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStreamingDistributionRequest[k], "UpdateStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamingDistributionRequest
-- <p>The request to update a streaming distribution.</p>
-- @param _IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @param _Id [string] <p>The streaming distribution's id.</p>
-- @param _StreamingDistributionConfig [StreamingDistributionConfig] <p>The streaming distribution's configuration information.</p>
-- Required parameter: StreamingDistributionConfig
-- Required parameter: Id
function M.UpdateStreamingDistributionRequest(_IfMatch, _Id, _StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStreamingDistributionRequest")
	local t = { 
		["IfMatch"] = _IfMatch,
		["Id"] = _Id,
		["StreamingDistributionConfig"] = _StreamingDistributionConfig,
	}
	asserts.AssertUpdateStreamingDistributionRequest(t)
	return t
end

keys.ListCloudFrontOriginAccessIdentitiesResult = { ["CloudFrontOriginAccessIdentityList"] = true, nil }

function asserts.AssertListCloudFrontOriginAccessIdentitiesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCloudFrontOriginAccessIdentitiesResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentityList"] then asserts.AssertCloudFrontOriginAccessIdentityList(struct["CloudFrontOriginAccessIdentityList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCloudFrontOriginAccessIdentitiesResult[k], "ListCloudFrontOriginAccessIdentitiesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCloudFrontOriginAccessIdentitiesResult
-- <p>The returned result of the corresponding request. </p>
-- @param _CloudFrontOriginAccessIdentityList [CloudFrontOriginAccessIdentityList] <p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>
function M.ListCloudFrontOriginAccessIdentitiesResult(_CloudFrontOriginAccessIdentityList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCloudFrontOriginAccessIdentitiesResult")
	local t = { 
		["CloudFrontOriginAccessIdentityList"] = _CloudFrontOriginAccessIdentityList,
	}
	asserts.AssertListCloudFrontOriginAccessIdentitiesResult(t)
	return t
end

keys.CreateInvalidationRequest = { ["InvalidationBatch"] = true, ["DistributionId"] = true, nil }

function asserts.AssertCreateInvalidationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInvalidationRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	assert(struct["InvalidationBatch"], "Expected key InvalidationBatch to exist in table")
	if struct["InvalidationBatch"] then asserts.AssertInvalidationBatch(struct["InvalidationBatch"]) end
	if struct["DistributionId"] then asserts.Assertstring(struct["DistributionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInvalidationRequest[k], "CreateInvalidationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInvalidationRequest
-- <p>The request to create an invalidation.</p>
-- @param _InvalidationBatch [InvalidationBatch] <p>The batch information for the invalidation.</p>
-- @param _DistributionId [string] <p>The distribution's id.</p>
-- Required parameter: DistributionId
-- Required parameter: InvalidationBatch
function M.CreateInvalidationRequest(_InvalidationBatch, _DistributionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInvalidationRequest")
	local t = { 
		["InvalidationBatch"] = _InvalidationBatch,
		["DistributionId"] = _DistributionId,
	}
	asserts.AssertCreateInvalidationRequest(t)
	return t
end

keys.TooManyDistributionCNAMEs = { ["Message"] = true, nil }

function asserts.AssertTooManyDistributionCNAMEs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyDistributionCNAMEs to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyDistributionCNAMEs[k], "TooManyDistributionCNAMEs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyDistributionCNAMEs
-- <p>Your request contains more CNAMEs than are allowed per distribution.</p>
-- @param _Message [string] 
function M.TooManyDistributionCNAMEs(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyDistributionCNAMEs")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyDistributionCNAMEs(t)
	return t
end

keys.TooManyHeadersInForwardedValues = { ["Message"] = true, nil }

function asserts.AssertTooManyHeadersInForwardedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyHeadersInForwardedValues to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyHeadersInForwardedValues[k], "TooManyHeadersInForwardedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyHeadersInForwardedValues
--  
-- @param _Message [string] 
function M.TooManyHeadersInForwardedValues(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyHeadersInForwardedValues")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyHeadersInForwardedValues(t)
	return t
end

keys.DistributionSummary = { ["Status"] = true, ["CacheBehaviors"] = true, ["Restrictions"] = true, ["Origins"] = true, ["DomainName"] = true, ["WebACLId"] = true, ["PriceClass"] = true, ["Enabled"] = true, ["DefaultCacheBehavior"] = true, ["IsIPV6Enabled"] = true, ["Comment"] = true, ["ViewerCertificate"] = true, ["CustomErrorResponses"] = true, ["LastModifiedTime"] = true, ["HttpVersion"] = true, ["Id"] = true, ["ARN"] = true, ["Aliases"] = true, nil }

function asserts.AssertDistributionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Aliases"], "Expected key Aliases to exist in table")
	assert(struct["Origins"], "Expected key Origins to exist in table")
	assert(struct["DefaultCacheBehavior"], "Expected key DefaultCacheBehavior to exist in table")
	assert(struct["CacheBehaviors"], "Expected key CacheBehaviors to exist in table")
	assert(struct["CustomErrorResponses"], "Expected key CustomErrorResponses to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["PriceClass"], "Expected key PriceClass to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["ViewerCertificate"], "Expected key ViewerCertificate to exist in table")
	assert(struct["Restrictions"], "Expected key Restrictions to exist in table")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["HttpVersion"], "Expected key HttpVersion to exist in table")
	assert(struct["IsIPV6Enabled"], "Expected key IsIPV6Enabled to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["CacheBehaviors"] then asserts.AssertCacheBehaviors(struct["CacheBehaviors"]) end
	if struct["Restrictions"] then asserts.AssertRestrictions(struct["Restrictions"]) end
	if struct["Origins"] then asserts.AssertOrigins(struct["Origins"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["WebACLId"] then asserts.Assertstring(struct["WebACLId"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["DefaultCacheBehavior"] then asserts.AssertDefaultCacheBehavior(struct["DefaultCacheBehavior"]) end
	if struct["IsIPV6Enabled"] then asserts.Assertboolean(struct["IsIPV6Enabled"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["ViewerCertificate"] then asserts.AssertViewerCertificate(struct["ViewerCertificate"]) end
	if struct["CustomErrorResponses"] then asserts.AssertCustomErrorResponses(struct["CustomErrorResponses"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["HttpVersion"] then asserts.AssertHttpVersion(struct["HttpVersion"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionSummary[k], "DistributionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionSummary
-- <p>A summary of the information about a CloudFront distribution.</p>
-- @param _Status [string] <p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>
-- @param _CacheBehaviors [CacheBehaviors] <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>
-- @param _Restrictions [Restrictions] 
-- @param _Origins [Origins] <p>A complex type that contains information about origins for this distribution.</p>
-- @param _DomainName [string] <p>The domain name that corresponds to the distribution. For example: <code>d604721fxaaqy9.cloudfront.net</code>.</p>
-- @param _WebACLId [string] <p>The Web ACL Id (if any) associated with the distribution.</p>
-- @param _PriceClass [PriceClass] 
-- @param _Enabled [boolean] <p>Whether the distribution is enabled to accept user requests for content.</p>
-- @param _DefaultCacheBehavior [DefaultCacheBehavior] <p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-- @param _IsIPV6Enabled [boolean] <p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>
-- @param _Comment [string] <p>The comment originally specified when this distribution was created.</p>
-- @param _ViewerCertificate [ViewerCertificate] 
-- @param _CustomErrorResponses [CustomErrorResponses] <p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>
-- @param _LastModifiedTime [timestamp] <p>The date and time the distribution was last modified.</p>
-- @param _HttpVersion [HttpVersion] <p> Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>
-- @param _Id [string] <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>
-- @param _ARN [string] <p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>
-- @param _Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: LastModifiedTime
-- Required parameter: DomainName
-- Required parameter: Aliases
-- Required parameter: Origins
-- Required parameter: DefaultCacheBehavior
-- Required parameter: CacheBehaviors
-- Required parameter: CustomErrorResponses
-- Required parameter: Comment
-- Required parameter: PriceClass
-- Required parameter: Enabled
-- Required parameter: ViewerCertificate
-- Required parameter: Restrictions
-- Required parameter: WebACLId
-- Required parameter: HttpVersion
-- Required parameter: IsIPV6Enabled
function M.DistributionSummary(_Status, _CacheBehaviors, _Restrictions, _Origins, _DomainName, _WebACLId, _PriceClass, _Enabled, _DefaultCacheBehavior, _IsIPV6Enabled, _Comment, _ViewerCertificate, _CustomErrorResponses, _LastModifiedTime, _HttpVersion, _Id, _ARN, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionSummary")
	local t = { 
		["Status"] = _Status,
		["CacheBehaviors"] = _CacheBehaviors,
		["Restrictions"] = _Restrictions,
		["Origins"] = _Origins,
		["DomainName"] = _DomainName,
		["WebACLId"] = _WebACLId,
		["PriceClass"] = _PriceClass,
		["Enabled"] = _Enabled,
		["DefaultCacheBehavior"] = _DefaultCacheBehavior,
		["IsIPV6Enabled"] = _IsIPV6Enabled,
		["Comment"] = _Comment,
		["ViewerCertificate"] = _ViewerCertificate,
		["CustomErrorResponses"] = _CustomErrorResponses,
		["LastModifiedTime"] = _LastModifiedTime,
		["HttpVersion"] = _HttpVersion,
		["Id"] = _Id,
		["ARN"] = _ARN,
		["Aliases"] = _Aliases,
	}
	asserts.AssertDistributionSummary(t)
	return t
end

keys.StreamingDistributionConfig = { ["S3Origin"] = true, ["Comment"] = true, ["Logging"] = true, ["PriceClass"] = true, ["Enabled"] = true, ["TrustedSigners"] = true, ["CallerReference"] = true, ["Aliases"] = true, nil }

function asserts.AssertStreamingDistributionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["S3Origin"], "Expected key S3Origin to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["S3Origin"] then asserts.AssertS3Origin(struct["S3Origin"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["Logging"] then asserts.AssertStreamingLoggingConfig(struct["Logging"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionConfig[k], "StreamingDistributionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionConfig
-- <p>The RTMP distribution's configuration information.</p>
-- @param _S3Origin [S3Origin] <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution. </p>
-- @param _Comment [string] <p>Any comments you want to include about the streaming distribution. </p>
-- @param _Logging [StreamingLoggingConfig] <p>A complex type that controls whether access logs are written for the streaming distribution. </p>
-- @param _PriceClass [PriceClass] <p>A complex type that contains information about price class for this streaming distribution. </p>
-- @param _Enabled [boolean] <p>Whether the streaming distribution is enabled to accept user requests for content.</p>
-- @param _TrustedSigners [TrustedSigners] <p>A complex type that specifies any AWS accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- @param _CallerReference [string] <p>A unique number that ensures that the request can't be replayed. If the <code>CallerReference</code> is new (no matter the content of the <code>StreamingDistributionConfig</code> object), a new streaming distribution is created. If the <code>CallerReference</code> is a value that you already sent in a previous request to create a streaming distribution, and the content of the <code>StreamingDistributionConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. If the <code>CallerReference</code> is a value that you already sent in a previous request to create a streaming distribution but the content of the <code>StreamingDistributionConfig</code> is different from the original request, CloudFront returns a <code>DistributionAlreadyExists</code> error. </p>
-- @param _Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution. </p>
-- Required parameter: CallerReference
-- Required parameter: S3Origin
-- Required parameter: Comment
-- Required parameter: TrustedSigners
-- Required parameter: Enabled
function M.StreamingDistributionConfig(_S3Origin, _Comment, _Logging, _PriceClass, _Enabled, _TrustedSigners, _CallerReference, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionConfig")
	local t = { 
		["S3Origin"] = _S3Origin,
		["Comment"] = _Comment,
		["Logging"] = _Logging,
		["PriceClass"] = _PriceClass,
		["Enabled"] = _Enabled,
		["TrustedSigners"] = _TrustedSigners,
		["CallerReference"] = _CallerReference,
		["Aliases"] = _Aliases,
	}
	asserts.AssertStreamingDistributionConfig(t)
	return t
end

keys.CreateDistributionWithTagsRequest = { ["DistributionConfigWithTags"] = true, nil }

function asserts.AssertCreateDistributionWithTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionWithTagsRequest to be of type 'table'")
	assert(struct["DistributionConfigWithTags"], "Expected key DistributionConfigWithTags to exist in table")
	if struct["DistributionConfigWithTags"] then asserts.AssertDistributionConfigWithTags(struct["DistributionConfigWithTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionWithTagsRequest[k], "CreateDistributionWithTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionWithTagsRequest
-- <p>The request to create a new distribution with tags. </p>
-- @param _DistributionConfigWithTags [DistributionConfigWithTags] <p>The distribution's configuration information. </p>
-- Required parameter: DistributionConfigWithTags
function M.CreateDistributionWithTagsRequest(_DistributionConfigWithTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionWithTagsRequest")
	local t = { 
		["DistributionConfigWithTags"] = _DistributionConfigWithTags,
	}
	asserts.AssertCreateDistributionWithTagsRequest(t)
	return t
end

keys.DeleteStreamingDistributionRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamingDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamingDistributionRequest[k], "DeleteStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamingDistributionRequest
-- <p>The request to delete a streaming distribution.</p>
-- @param _Id [string] <p>The distribution ID. </p>
-- @param _IfMatch [string] <p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required parameter: Id
function M.DeleteStreamingDistributionRequest(_Id, _IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStreamingDistributionRequest")
	local t = { 
		["Id"] = _Id,
		["IfMatch"] = _IfMatch,
	}
	asserts.AssertDeleteStreamingDistributionRequest(t)
	return t
end

keys.StreamingLoggingConfig = { ["Bucket"] = true, ["Prefix"] = true, ["Enabled"] = true, nil }

function asserts.AssertStreamingLoggingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingLoggingConfig to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Bucket"] then asserts.Assertstring(struct["Bucket"]) end
	if struct["Prefix"] then asserts.Assertstring(struct["Prefix"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingLoggingConfig[k], "StreamingLoggingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingLoggingConfig
-- <p>A complex type that controls whether access logs are written for this streaming distribution.</p>
-- @param _Bucket [string] <p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>
-- @param _Prefix [string] <p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you do not want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
-- @param _Enabled [boolean] <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you do not want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted. </p>
-- Required parameter: Enabled
-- Required parameter: Bucket
-- Required parameter: Prefix
function M.StreamingLoggingConfig(_Bucket, _Prefix, _Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingLoggingConfig")
	local t = { 
		["Bucket"] = _Bucket,
		["Prefix"] = _Prefix,
		["Enabled"] = _Enabled,
	}
	asserts.AssertStreamingLoggingConfig(t)
	return t
end

keys.CacheBehavior = { ["TrustedSigners"] = true, ["LambdaFunctionAssociations"] = true, ["TargetOriginId"] = true, ["ViewerProtocolPolicy"] = true, ["ForwardedValues"] = true, ["MaxTTL"] = true, ["PathPattern"] = true, ["SmoothStreaming"] = true, ["DefaultTTL"] = true, ["AllowedMethods"] = true, ["MinTTL"] = true, ["Compress"] = true, nil }

function asserts.AssertCacheBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheBehavior to be of type 'table'")
	assert(struct["PathPattern"], "Expected key PathPattern to exist in table")
	assert(struct["TargetOriginId"], "Expected key TargetOriginId to exist in table")
	assert(struct["ForwardedValues"], "Expected key ForwardedValues to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["ViewerProtocolPolicy"], "Expected key ViewerProtocolPolicy to exist in table")
	assert(struct["MinTTL"], "Expected key MinTTL to exist in table")
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["LambdaFunctionAssociations"] then asserts.AssertLambdaFunctionAssociations(struct["LambdaFunctionAssociations"]) end
	if struct["TargetOriginId"] then asserts.Assertstring(struct["TargetOriginId"]) end
	if struct["ViewerProtocolPolicy"] then asserts.AssertViewerProtocolPolicy(struct["ViewerProtocolPolicy"]) end
	if struct["ForwardedValues"] then asserts.AssertForwardedValues(struct["ForwardedValues"]) end
	if struct["MaxTTL"] then asserts.Assertlong(struct["MaxTTL"]) end
	if struct["PathPattern"] then asserts.Assertstring(struct["PathPattern"]) end
	if struct["SmoothStreaming"] then asserts.Assertboolean(struct["SmoothStreaming"]) end
	if struct["DefaultTTL"] then asserts.Assertlong(struct["DefaultTTL"]) end
	if struct["AllowedMethods"] then asserts.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MinTTL"] then asserts.Assertlong(struct["MinTTL"]) end
	if struct["Compress"] then asserts.Assertboolean(struct["Compress"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheBehavior[k], "CacheBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheBehavior
-- <p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _TrustedSigners [TrustedSigners] <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>
-- @param _LambdaFunctionAssociations [LambdaFunctionAssociations] <p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>
-- @param _TargetOriginId [string] <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.</p>
-- @param _ViewerProtocolPolicy [ViewerProtocolPolicy] <p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL. </p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). </p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
-- @param _ForwardedValues [ForwardedValues] <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-- @param _MaxTTL [long] <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _PathPattern [string] <p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
-- @param _SmoothStreaming [boolean] <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>
-- @param _DefaultTTL [long] <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _AllowedMethods [AllowedMethods] 
-- @param _MinTTL [long] <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
-- @param _Compress [boolean] <p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required parameter: PathPattern
-- Required parameter: TargetOriginId
-- Required parameter: ForwardedValues
-- Required parameter: TrustedSigners
-- Required parameter: ViewerProtocolPolicy
-- Required parameter: MinTTL
function M.CacheBehavior(_TrustedSigners, _LambdaFunctionAssociations, _TargetOriginId, _ViewerProtocolPolicy, _ForwardedValues, _MaxTTL, _PathPattern, _SmoothStreaming, _DefaultTTL, _AllowedMethods, _MinTTL, _Compress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheBehavior")
	local t = { 
		["TrustedSigners"] = _TrustedSigners,
		["LambdaFunctionAssociations"] = _LambdaFunctionAssociations,
		["TargetOriginId"] = _TargetOriginId,
		["ViewerProtocolPolicy"] = _ViewerProtocolPolicy,
		["ForwardedValues"] = _ForwardedValues,
		["MaxTTL"] = _MaxTTL,
		["PathPattern"] = _PathPattern,
		["SmoothStreaming"] = _SmoothStreaming,
		["DefaultTTL"] = _DefaultTTL,
		["AllowedMethods"] = _AllowedMethods,
		["MinTTL"] = _MinTTL,
		["Compress"] = _Compress,
	}
	asserts.AssertCacheBehavior(t)
	return t
end

keys.BatchTooLarge = { ["Message"] = true, nil }

function asserts.AssertBatchTooLarge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchTooLarge to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchTooLarge[k], "BatchTooLarge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchTooLarge
--  
-- @param _Message [string] 
function M.BatchTooLarge(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchTooLarge")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertBatchTooLarge(t)
	return t
end

keys.S3Origin = { ["OriginAccessIdentity"] = true, ["DomainName"] = true, nil }

function asserts.AssertS3Origin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Origin to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["OriginAccessIdentity"], "Expected key OriginAccessIdentity to exist in table")
	if struct["OriginAccessIdentity"] then asserts.Assertstring(struct["OriginAccessIdentity"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Origin[k], "S3Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Origin
-- <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
-- @param _OriginAccessIdentity [string] <p>The CloudFront origin access identity to associate with the RTMP distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
-- @param _DomainName [string] <p>The DNS name of the Amazon S3 origin. </p>
-- Required parameter: DomainName
-- Required parameter: OriginAccessIdentity
function M.S3Origin(_OriginAccessIdentity, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Origin")
	local t = { 
		["OriginAccessIdentity"] = _OriginAccessIdentity,
		["DomainName"] = _DomainName,
	}
	asserts.AssertS3Origin(t)
	return t
end

keys.Paths = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertPaths(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Paths to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertPathList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Paths[k], "Paths contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Paths
-- <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- @param _Items [PathList] <p>A complex type that contains a list of the paths that you want to invalidate.</p>
-- @param _Quantity [integer] <p>The number of objects that you want to invalidate.</p>
-- Required parameter: Quantity
function M.Paths(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Paths")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertPaths(t)
	return t
end

keys.UpdateDistributionResult = { ["Distribution"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDistributionResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDistributionResult[k], "UpdateDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param _Distribution [Distribution] <p>The distribution's information.</p>
-- @param _ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.UpdateDistributionResult(_Distribution, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDistributionResult")
	local t = { 
		["Distribution"] = _Distribution,
		["ETag"] = _ETag,
	}
	asserts.AssertUpdateDistributionResult(t)
	return t
end

keys.KeyPairIds = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertKeyPairIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPairIds to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertKeyPairIdList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPairIds[k], "KeyPairIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPairIds
-- <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- @param _Items [KeyPairIdList] <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- @param _Quantity [integer] <p>The number of active CloudFront key pairs for <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- Required parameter: Quantity
function M.KeyPairIds(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPairIds")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertKeyPairIds(t)
	return t
end

keys.TooManyCookieNamesInWhiteList = { ["Message"] = true, nil }

function asserts.AssertTooManyCookieNamesInWhiteList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCookieNamesInWhiteList to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyCookieNamesInWhiteList[k], "TooManyCookieNamesInWhiteList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCookieNamesInWhiteList
-- <p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>
-- @param _Message [string] 
function M.TooManyCookieNamesInWhiteList(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCookieNamesInWhiteList")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyCookieNamesInWhiteList(t)
	return t
end

keys.CreateDistributionWithTagsResult = { ["Distribution"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateDistributionWithTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionWithTagsResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionWithTagsResult[k], "CreateDistributionWithTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionWithTagsResult
-- <p>The returned result of the corresponding request. </p>
-- @param _Distribution [Distribution] <p>The distribution's information. </p>
-- @param _ETag [string] <p>The current version of the distribution created.</p>
-- @param _Location [string] <p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>. </p>
function M.CreateDistributionWithTagsResult(_Distribution, _ETag, _Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionWithTagsResult")
	local t = { 
		["Distribution"] = _Distribution,
		["ETag"] = _ETag,
		["Location"] = _Location,
	}
	asserts.AssertCreateDistributionWithTagsResult(t)
	return t
end

keys.CreateCloudFrontOriginAccessIdentityResult = { ["CloudFrontOriginAccessIdentity"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then asserts.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFrontOriginAccessIdentityResult[k], "CreateCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFrontOriginAccessIdentityResult
-- <p>The returned result of the corresponding request.</p>
-- @param _CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] <p>The origin access identity's information.</p>
-- @param _ETag [string] <p>The current version of the origin access identity created.</p>
-- @param _Location [string] <p>The fully qualified URI of the new origin access identity just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A</code>.</p>
function M.CreateCloudFrontOriginAccessIdentityResult(_CloudFrontOriginAccessIdentity, _ETag, _Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCloudFrontOriginAccessIdentityResult")
	local t = { 
		["CloudFrontOriginAccessIdentity"] = _CloudFrontOriginAccessIdentity,
		["ETag"] = _ETag,
		["Location"] = _Location,
	}
	asserts.AssertCreateCloudFrontOriginAccessIdentityResult(t)
	return t
end

keys.QueryStringCacheKeys = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertQueryStringCacheKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryStringCacheKeys to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertQueryStringCacheKeysList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryStringCacheKeys[k], "QueryStringCacheKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryStringCacheKeys
--  
-- @param _Items [QueryStringCacheKeysList] <p>(Optional) A list that contains the query string parameters that you want CloudFront to use as a basis for caching for this cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>. </p>
-- @param _Quantity [integer] <p>The number of <code>whitelisted</code> query string parameters for this cache behavior.</p>
-- Required parameter: Quantity
function M.QueryStringCacheKeys(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryStringCacheKeys")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertQueryStringCacheKeys(t)
	return t
end

keys.IllegalUpdate = { ["Message"] = true, nil }

function asserts.AssertIllegalUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IllegalUpdate to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IllegalUpdate[k], "IllegalUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IllegalUpdate
-- <p>Origin and <code>CallerReference</code> cannot be updated. </p>
-- @param _Message [string] 
function M.IllegalUpdate(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IllegalUpdate")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertIllegalUpdate(t)
	return t
end

keys.CustomHeaders = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCustomHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomHeaders to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertOriginCustomHeadersList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomHeaders[k], "CustomHeaders contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomHeaders
-- <p>A complex type that contains the list of Custom Headers for each origin. </p>
-- @param _Items [OriginCustomHeadersList] <p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>
-- @param _Quantity [integer] <p>The number of custom headers, if any, for this distribution.</p>
-- Required parameter: Quantity
function M.CustomHeaders(_Items, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomHeaders")
	local t = { 
		["Items"] = _Items,
		["Quantity"] = _Quantity,
	}
	asserts.AssertCustomHeaders(t)
	return t
end

keys.GetStreamingDistributionRequest = { ["Id"] = true, nil }

function asserts.AssertGetStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionRequest[k], "GetStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionRequest
-- <p>The request to get a streaming distribution's information.</p>
-- @param _Id [string] <p>The streaming distribution's ID.</p>
-- Required parameter: Id
function M.GetStreamingDistributionRequest(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionRequest")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertGetStreamingDistributionRequest(t)
	return t
end

keys.ActiveTrustedSigners = { ["Items"] = true, ["Enabled"] = true, ["Quantity"] = true, nil }

function asserts.AssertActiveTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActiveTrustedSigners to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertSignerList(struct["Items"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActiveTrustedSigners[k], "ActiveTrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActiveTrustedSigners
-- <p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Items [SignerList] <p>A complex type that contains one <code>Signer</code> complex type for each trusted signer that is specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>. </p>
-- @param _Enabled [boolean] <p>Enabled is <code>true</code> if any of the AWS accounts listed in the <code>TrustedSigners</code> complex type for this RTMP distribution have active CloudFront key pairs. If not, <code>Enabled</code> is <code>false</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- @param _Quantity [integer] <p>A complex type that contains one <code>Signer</code> complex type for each trusted signer specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- Required parameter: Enabled
-- Required parameter: Quantity
function M.ActiveTrustedSigners(_Items, _Enabled, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActiveTrustedSigners")
	local t = { 
		["Items"] = _Items,
		["Enabled"] = _Enabled,
		["Quantity"] = _Quantity,
	}
	asserts.AssertActiveTrustedSigners(t)
	return t
end

keys.TooManyCloudFrontOriginAccessIdentities = { ["Message"] = true, nil }

function asserts.AssertTooManyCloudFrontOriginAccessIdentities(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCloudFrontOriginAccessIdentities to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyCloudFrontOriginAccessIdentities[k], "TooManyCloudFrontOriginAccessIdentities contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCloudFrontOriginAccessIdentities
-- <p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>
-- @param _Message [string] 
function M.TooManyCloudFrontOriginAccessIdentities(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCloudFrontOriginAccessIdentities")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyCloudFrontOriginAccessIdentities(t)
	return t
end

keys.CreateStreamingDistributionWithTagsRequest = { ["StreamingDistributionConfigWithTags"] = true, nil }

function asserts.AssertCreateStreamingDistributionWithTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionWithTagsRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfigWithTags"], "Expected key StreamingDistributionConfigWithTags to exist in table")
	if struct["StreamingDistributionConfigWithTags"] then asserts.AssertStreamingDistributionConfigWithTags(struct["StreamingDistributionConfigWithTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionWithTagsRequest[k], "CreateStreamingDistributionWithTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionWithTagsRequest
-- <p>The request to create a new streaming distribution with tags.</p>
-- @param _StreamingDistributionConfigWithTags [StreamingDistributionConfigWithTags] <p> The streaming distribution's configuration information. </p>
-- Required parameter: StreamingDistributionConfigWithTags
function M.CreateStreamingDistributionWithTagsRequest(_StreamingDistributionConfigWithTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionWithTagsRequest")
	local t = { 
		["StreamingDistributionConfigWithTags"] = _StreamingDistributionConfigWithTags,
	}
	asserts.AssertCreateStreamingDistributionWithTagsRequest(t)
	return t
end

keys.AccessDenied = { ["Message"] = true, nil }

function asserts.AssertAccessDenied(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDenied to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDenied[k], "AccessDenied contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDenied
-- <p>Access denied.</p>
-- @param _Message [string] 
function M.AccessDenied(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDenied")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertAccessDenied(t)
	return t
end

keys.LoggingConfig = { ["Bucket"] = true, ["Prefix"] = true, ["Enabled"] = true, ["IncludeCookies"] = true, nil }

function asserts.AssertLoggingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingConfig to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["IncludeCookies"], "Expected key IncludeCookies to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Bucket"] then asserts.Assertstring(struct["Bucket"]) end
	if struct["Prefix"] then asserts.Assertstring(struct["Prefix"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["IncludeCookies"] then asserts.Assertboolean(struct["IncludeCookies"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingConfig[k], "LoggingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingConfig
-- <p>A complex type that controls whether access logs are written for the distribution.</p>
-- @param _Bucket [string] <p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>
-- @param _Prefix [string] <p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you do not want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
-- @param _Enabled [boolean] <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you do not want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>, and <code>IncludeCookies</code>, the values are automatically deleted.</p>
-- @param _IncludeCookies [boolean] <p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you do not want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>
-- Required parameter: Enabled
-- Required parameter: IncludeCookies
-- Required parameter: Bucket
-- Required parameter: Prefix
function M.LoggingConfig(_Bucket, _Prefix, _Enabled, _IncludeCookies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingConfig")
	local t = { 
		["Bucket"] = _Bucket,
		["Prefix"] = _Prefix,
		["Enabled"] = _Enabled,
		["IncludeCookies"] = _IncludeCookies,
	}
	asserts.AssertLoggingConfig(t)
	return t
end

keys.ForwardedValues = { ["Headers"] = true, ["Cookies"] = true, ["QueryStringCacheKeys"] = true, ["QueryString"] = true, nil }

function asserts.AssertForwardedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForwardedValues to be of type 'table'")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	assert(struct["Cookies"], "Expected key Cookies to exist in table")
	if struct["Headers"] then asserts.AssertHeaders(struct["Headers"]) end
	if struct["Cookies"] then asserts.AssertCookiePreference(struct["Cookies"]) end
	if struct["QueryStringCacheKeys"] then asserts.AssertQueryStringCacheKeys(struct["QueryStringCacheKeys"]) end
	if struct["QueryString"] then asserts.Assertboolean(struct["QueryString"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForwardedValues[k], "ForwardedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForwardedValues
-- <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-- @param _Headers [Headers] <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to vary upon for this cache behavior. </p>
-- @param _Cookies [CookiePreference] <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _QueryStringCacheKeys [QueryStringCacheKeys] <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>
-- @param _QueryString [boolean] <p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required parameter: QueryString
-- Required parameter: Cookies
function M.ForwardedValues(_Headers, _Cookies, _QueryStringCacheKeys, _QueryString, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForwardedValues")
	local t = { 
		["Headers"] = _Headers,
		["Cookies"] = _Cookies,
		["QueryStringCacheKeys"] = _QueryStringCacheKeys,
		["QueryString"] = _QueryString,
	}
	asserts.AssertForwardedValues(t)
	return t
end

keys.TooManyTrustedSigners = { ["Message"] = true, nil }

function asserts.AssertTooManyTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTrustedSigners to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyTrustedSigners[k], "TooManyTrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTrustedSigners
-- <p>Your request contains more trusted signers than are allowed per distribution.</p>
-- @param _Message [string] 
function M.TooManyTrustedSigners(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTrustedSigners")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyTrustedSigners(t)
	return t
end

keys.ListInvalidationsRequest = { ["Marker"] = true, ["DistributionId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListInvalidationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvalidationsRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["DistributionId"] then asserts.Assertstring(struct["DistributionId"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInvalidationsRequest[k], "ListInvalidationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvalidationsRequest
-- <p>The request to list invalidations. </p>
-- @param _Marker [string] <p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page. </p>
-- @param _DistributionId [string] <p>The distribution's ID.</p>
-- @param _MaxItems [string] <p>The maximum number of invalidation batches that you want in the response body.</p>
-- Required parameter: DistributionId
function M.ListInvalidationsRequest(_Marker, _DistributionId, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInvalidationsRequest")
	local t = { 
		["Marker"] = _Marker,
		["DistributionId"] = _DistributionId,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListInvalidationsRequest(t)
	return t
end

keys.InvalidErrorCode = { ["Message"] = true, nil }

function asserts.AssertInvalidErrorCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidErrorCode to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidErrorCode[k], "InvalidErrorCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidErrorCode
--  
-- @param _Message [string] 
function M.InvalidErrorCode(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidErrorCode")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidErrorCode(t)
	return t
end

keys.UpdateCloudFrontOriginAccessIdentityRequest = { ["CloudFrontOriginAccessIdentityConfig"] = true, ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertUpdateCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["CloudFrontOriginAccessIdentityConfig"], "Expected key CloudFrontOriginAccessIdentityConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCloudFrontOriginAccessIdentityRequest[k], "UpdateCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCloudFrontOriginAccessIdentityRequest
-- <p>The request to update an origin access identity.</p>
-- @param _CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The identity's configuration information.</p>
-- @param _Id [string] <p>The identity's id.</p>
-- @param _IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required parameter: CloudFrontOriginAccessIdentityConfig
-- Required parameter: Id
function M.UpdateCloudFrontOriginAccessIdentityRequest(_CloudFrontOriginAccessIdentityConfig, _Id, _IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = _CloudFrontOriginAccessIdentityConfig,
		["Id"] = _Id,
		["IfMatch"] = _IfMatch,
	}
	asserts.AssertUpdateCloudFrontOriginAccessIdentityRequest(t)
	return t
end

keys.DistributionNotDisabled = { ["Message"] = true, nil }

function asserts.AssertDistributionNotDisabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionNotDisabled to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionNotDisabled[k], "DistributionNotDisabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionNotDisabled
--  
-- @param _Message [string] 
function M.DistributionNotDisabled(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionNotDisabled")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDistributionNotDisabled(t)
	return t
end

keys.LambdaFunctionAssociation = { ["EventType"] = true, ["LambdaFunctionARN"] = true, nil }

function asserts.AssertLambdaFunctionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionAssociation to be of type 'table'")
	if struct["EventType"] then asserts.AssertEventType(struct["EventType"]) end
	if struct["LambdaFunctionARN"] then asserts.Assertstring(struct["LambdaFunctionARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionAssociation[k], "LambdaFunctionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionAssociation
-- <p>A complex type that contains a Lambda function association.</p>
-- @param _EventType [EventType] <p>Specifies the event type that triggers a Lambda function invocation. Valid values are:</p> <ul> <li> <p> <code>viewer-request</code> </p> </li> <li> <p> <code>origin-request</code> </p> </li> <li> <p> <code>viewer-response</code> </p> </li> <li> <p> <code>origin-response</code> </p> </li> </ul>
-- @param _LambdaFunctionARN [string] <p>The ARN of the Lambda function.</p>
function M.LambdaFunctionAssociation(_EventType, _LambdaFunctionARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionAssociation")
	local t = { 
		["EventType"] = _EventType,
		["LambdaFunctionARN"] = _LambdaFunctionARN,
	}
	asserts.AssertLambdaFunctionAssociation(t)
	return t
end

keys.StreamingDistributionConfigWithTags = { ["Tags"] = true, ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertStreamingDistributionConfigWithTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionConfigWithTags to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionConfigWithTags[k], "StreamingDistributionConfigWithTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionConfigWithTags
-- <p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>
-- @param _Tags [Tags] <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
-- @param _StreamingDistributionConfig [StreamingDistributionConfig] <p>A streaming distribution Configuration.</p>
-- Required parameter: StreamingDistributionConfig
-- Required parameter: Tags
function M.StreamingDistributionConfigWithTags(_Tags, _StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionConfigWithTags")
	local t = { 
		["Tags"] = _Tags,
		["StreamingDistributionConfig"] = _StreamingDistributionConfig,
	}
	asserts.AssertStreamingDistributionConfigWithTags(t)
	return t
end

keys.UpdateStreamingDistributionResult = { ["StreamingDistribution"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStreamingDistributionResult[k], "UpdateStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamingDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param _StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information.</p>
-- @param _ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.UpdateStreamingDistributionResult(_StreamingDistribution, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStreamingDistributionResult")
	local t = { 
		["StreamingDistribution"] = _StreamingDistribution,
		["ETag"] = _ETag,
	}
	asserts.AssertUpdateStreamingDistributionResult(t)
	return t
end

keys.DeleteDistributionRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDistributionRequest[k], "DeleteDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDistributionRequest
-- <p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Id [string] <p>The distribution ID. </p>
-- @param _IfMatch [string] <p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>
-- Required parameter: Id
function M.DeleteDistributionRequest(_Id, _IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDistributionRequest")
	local t = { 
		["Id"] = _Id,
		["IfMatch"] = _IfMatch,
	}
	asserts.AssertDeleteDistributionRequest(t)
	return t
end

keys.CreateStreamingDistributionResult = { ["StreamingDistribution"] = true, ["Location"] = true, ["ETag"] = true, nil }

function asserts.AssertCreateStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionResult[k], "CreateStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param _StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information.</p>
-- @param _Location [string] <p>The fully qualified URI of the new streaming distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>
-- @param _ETag [string] <p>The current version of the streaming distribution created.</p>
function M.CreateStreamingDistributionResult(_StreamingDistribution, _Location, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionResult")
	local t = { 
		["StreamingDistribution"] = _StreamingDistribution,
		["Location"] = _Location,
		["ETag"] = _ETag,
	}
	asserts.AssertCreateStreamingDistributionResult(t)
	return t
end

keys.ListStreamingDistributionsResult = { ["StreamingDistributionList"] = true, nil }

function asserts.AssertListStreamingDistributionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamingDistributionsResult to be of type 'table'")
	if struct["StreamingDistributionList"] then asserts.AssertStreamingDistributionList(struct["StreamingDistributionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamingDistributionsResult[k], "ListStreamingDistributionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamingDistributionsResult
-- <p>The returned result of the corresponding request. </p>
-- @param _StreamingDistributionList [StreamingDistributionList] <p>The <code>StreamingDistributionList</code> type. </p>
function M.ListStreamingDistributionsResult(_StreamingDistributionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamingDistributionsResult")
	local t = { 
		["StreamingDistributionList"] = _StreamingDistributionList,
	}
	asserts.AssertListStreamingDistributionsResult(t)
	return t
end

keys.DeleteCloudFrontOriginAccessIdentityRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCloudFrontOriginAccessIdentityRequest[k], "DeleteCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCloudFrontOriginAccessIdentityRequest
-- <p>Deletes a origin access identity.</p>
-- @param _Id [string] <p>The origin access identity's ID.</p>
-- @param _IfMatch [string] <p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required parameter: Id
function M.DeleteCloudFrontOriginAccessIdentityRequest(_Id, _IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["Id"] = _Id,
		["IfMatch"] = _IfMatch,
	}
	asserts.AssertDeleteCloudFrontOriginAccessIdentityRequest(t)
	return t
end

keys.ListDistributionsByWebACLIdRequest = { ["Marker"] = true, ["WebACLId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListDistributionsByWebACLIdRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsByWebACLIdRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["WebACLId"] then asserts.Assertstring(struct["WebACLId"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsByWebACLIdRequest[k], "ListDistributionsByWebACLIdRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsByWebACLIdRequest
-- <p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>
-- @param _Marker [string] <p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.) </p>
-- @param _WebACLId [string] <p>The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify "null" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p>
-- @param _MaxItems [string] <p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>
-- Required parameter: WebACLId
function M.ListDistributionsByWebACLIdRequest(_Marker, _WebACLId, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsByWebACLIdRequest")
	local t = { 
		["Marker"] = _Marker,
		["WebACLId"] = _WebACLId,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListDistributionsByWebACLIdRequest(t)
	return t
end

keys.GetInvalidationRequest = { ["DistributionId"] = true, ["Id"] = true, nil }

function asserts.AssertGetInvalidationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvalidationRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["DistributionId"] then asserts.Assertstring(struct["DistributionId"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInvalidationRequest[k], "GetInvalidationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvalidationRequest
-- <p>The request to get an invalidation's information. </p>
-- @param _DistributionId [string] <p>The distribution's ID.</p>
-- @param _Id [string] <p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>
-- Required parameter: DistributionId
-- Required parameter: Id
function M.GetInvalidationRequest(_DistributionId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInvalidationRequest")
	local t = { 
		["DistributionId"] = _DistributionId,
		["Id"] = _Id,
	}
	asserts.AssertGetInvalidationRequest(t)
	return t
end

keys.CreateCloudFrontOriginAccessIdentityRequest = { ["CloudFrontOriginAccessIdentityConfig"] = true, nil }

function asserts.AssertCreateCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["CloudFrontOriginAccessIdentityConfig"], "Expected key CloudFrontOriginAccessIdentityConfig to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFrontOriginAccessIdentityRequest[k], "CreateCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFrontOriginAccessIdentityRequest
-- <p>The request to create a new origin access identity.</p>
-- @param _CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The current configuration information for the identity.</p>
-- Required parameter: CloudFrontOriginAccessIdentityConfig
function M.CreateCloudFrontOriginAccessIdentityRequest(_CloudFrontOriginAccessIdentityConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = _CloudFrontOriginAccessIdentityConfig,
	}
	asserts.AssertCreateCloudFrontOriginAccessIdentityRequest(t)
	return t
end

keys.GetStreamingDistributionResult = { ["StreamingDistribution"] = true, ["ETag"] = true, nil }

function asserts.AssertGetStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionResult[k], "GetStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param _StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information.</p>
-- @param _ETag [string] <p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.GetStreamingDistributionResult(_StreamingDistribution, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionResult")
	local t = { 
		["StreamingDistribution"] = _StreamingDistribution,
		["ETag"] = _ETag,
	}
	asserts.AssertGetStreamingDistributionResult(t)
	return t
end

keys.CustomOriginConfig = { ["OriginSslProtocols"] = true, ["OriginProtocolPolicy"] = true, ["OriginReadTimeout"] = true, ["HTTPPort"] = true, ["HTTPSPort"] = true, ["OriginKeepaliveTimeout"] = true, nil }

function asserts.AssertCustomOriginConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomOriginConfig to be of type 'table'")
	assert(struct["HTTPPort"], "Expected key HTTPPort to exist in table")
	assert(struct["HTTPSPort"], "Expected key HTTPSPort to exist in table")
	assert(struct["OriginProtocolPolicy"], "Expected key OriginProtocolPolicy to exist in table")
	if struct["OriginSslProtocols"] then asserts.AssertOriginSslProtocols(struct["OriginSslProtocols"]) end
	if struct["OriginProtocolPolicy"] then asserts.AssertOriginProtocolPolicy(struct["OriginProtocolPolicy"]) end
	if struct["OriginReadTimeout"] then asserts.Assertinteger(struct["OriginReadTimeout"]) end
	if struct["HTTPPort"] then asserts.Assertinteger(struct["HTTPPort"]) end
	if struct["HTTPSPort"] then asserts.Assertinteger(struct["HTTPSPort"]) end
	if struct["OriginKeepaliveTimeout"] then asserts.Assertinteger(struct["OriginKeepaliveTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomOriginConfig[k], "CustomOriginConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomOriginConfig
-- <p>A customer origin.</p>
-- @param _OriginSslProtocols [OriginSslProtocols] <p>The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.</p>
-- @param _OriginProtocolPolicy [OriginProtocolPolicy] <p>The origin protocol policy to apply to your origin.</p>
-- @param _OriginReadTimeout [integer] <p>You can create a custom origin read timeout. All timeout units are in seconds. The default origin read timeout is 30 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 4 seconds; the maximum is 60 seconds.</p> <p>If you need to increase the maximum time limit, contact the <a href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>.</p>
-- @param _HTTPPort [integer] <p>The HTTP port the custom origin listens on.</p>
-- @param _HTTPSPort [integer] <p>The HTTPS port the custom origin listens on.</p>
-- @param _OriginKeepaliveTimeout [integer] <p>You can create a custom keep-alive timeout. All timeout units are in seconds. The default keep-alive timeout is 5 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 1 second; the maximum is 60 seconds.</p> <p>If you need to increase the maximum time limit, contact the <a href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>.</p>
-- Required parameter: HTTPPort
-- Required parameter: HTTPSPort
-- Required parameter: OriginProtocolPolicy
function M.CustomOriginConfig(_OriginSslProtocols, _OriginProtocolPolicy, _OriginReadTimeout, _HTTPPort, _HTTPSPort, _OriginKeepaliveTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomOriginConfig")
	local t = { 
		["OriginSslProtocols"] = _OriginSslProtocols,
		["OriginProtocolPolicy"] = _OriginProtocolPolicy,
		["OriginReadTimeout"] = _OriginReadTimeout,
		["HTTPPort"] = _HTTPPort,
		["HTTPSPort"] = _HTTPSPort,
		["OriginKeepaliveTimeout"] = _OriginKeepaliveTimeout,
	}
	asserts.AssertCustomOriginConfig(t)
	return t
end

keys.GetCloudFrontOriginAccessIdentityResult = { ["CloudFrontOriginAccessIdentity"] = true, ["ETag"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then asserts.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityResult[k], "GetCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityResult
-- <p>The returned result of the corresponding request.</p>
-- @param _CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] <p>The origin access identity's information.</p>
-- @param _ETag [string] <p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
function M.GetCloudFrontOriginAccessIdentityResult(_CloudFrontOriginAccessIdentity, _ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityResult")
	local t = { 
		["CloudFrontOriginAccessIdentity"] = _CloudFrontOriginAccessIdentity,
		["ETag"] = _ETag,
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityResult(t)
	return t
end

keys.InvalidOriginKeepaliveTimeout = { ["Message"] = true, nil }

function asserts.AssertInvalidOriginKeepaliveTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOriginKeepaliveTimeout to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOriginKeepaliveTimeout[k], "InvalidOriginKeepaliveTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOriginKeepaliveTimeout
--  
-- @param _Message [string] 
function M.InvalidOriginKeepaliveTimeout(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOriginKeepaliveTimeout")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidOriginKeepaliveTimeout(t)
	return t
end

keys.GeoRestriction = { ["Items"] = true, ["RestrictionType"] = true, ["Quantity"] = true, nil }

function asserts.AssertGeoRestriction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoRestriction to be of type 'table'")
	assert(struct["RestrictionType"], "Expected key RestrictionType to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertLocationList(struct["Items"]) end
	if struct["RestrictionType"] then asserts.AssertGeoRestrictionType(struct["RestrictionType"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoRestriction[k], "GeoRestriction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoRestriction
-- <p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>
-- @param _Items [LocationList] <p> A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list in the CloudFront console, which includes both country names and codes.</p>
-- @param _RestrictionType [GeoRestrictionType] <p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you do not want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>
-- @param _Quantity [integer] <p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>
-- Required parameter: RestrictionType
-- Required parameter: Quantity
function M.GeoRestriction(_Items, _RestrictionType, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GeoRestriction")
	local t = { 
		["Items"] = _Items,
		["RestrictionType"] = _RestrictionType,
		["Quantity"] = _Quantity,
	}
	asserts.AssertGeoRestriction(t)
	return t
end

keys.CookiePreference = { ["Forward"] = true, ["WhitelistedNames"] = true, nil }

function asserts.AssertCookiePreference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CookiePreference to be of type 'table'")
	assert(struct["Forward"], "Expected key Forward to exist in table")
	if struct["Forward"] then asserts.AssertItemSelection(struct["Forward"]) end
	if struct["WhitelistedNames"] then asserts.AssertCookieNames(struct["WhitelistedNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.CookiePreference[k], "CookiePreference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CookiePreference
-- <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param _Forward [ItemSelection] <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element. </p>
-- @param _WhitelistedNames [CookieNames] <p>Required if you specify <code>whitelist</code> for the value of <code>Forward:</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or none for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to all or none and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: Forward
function M.CookiePreference(_Forward, _WhitelistedNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CookiePreference")
	local t = { 
		["Forward"] = _Forward,
		["WhitelistedNames"] = _WhitelistedNames,
	}
	asserts.AssertCookiePreference(t)
	return t
end

keys.InvalidLambdaFunctionAssociation = { ["Message"] = true, nil }

function asserts.AssertInvalidLambdaFunctionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaFunctionAssociation to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLambdaFunctionAssociation[k], "InvalidLambdaFunctionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaFunctionAssociation
-- <p>The specified Lambda function association is invalid.</p>
-- @param _Message [string] 
function M.InvalidLambdaFunctionAssociation(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaFunctionAssociation")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidLambdaFunctionAssociation(t)
	return t
end

keys.NoSuchDistribution = { ["Message"] = true, nil }

function asserts.AssertNoSuchDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDistribution to be of type 'table'")
	if struct["Message"] then asserts.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchDistribution[k], "NoSuchDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDistribution
-- <p>The specified distribution does not exist.</p>
-- @param _Message [string] 
function M.NoSuchDistribution(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDistribution")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNoSuchDistribution(t)
	return t
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertSSLSupportMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected SSLSupportMethod to be of type 'string'")
end

--  
function M.SSLSupportMethod(str)
	asserts.AssertSSLSupportMethod(str)
	return str
end

function asserts.AssertMinimumProtocolVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected MinimumProtocolVersion to be of type 'string'")
end

--  
function M.MinimumProtocolVersion(str)
	asserts.AssertMinimumProtocolVersion(str)
	return str
end

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AssertHttpVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpVersion to be of type 'string'")
end

--  
function M.HttpVersion(str)
	asserts.AssertHttpVersion(str)
	return str
end

function asserts.AssertPriceClass(str)
	assert(str)
	assert(type(str) == "string", "Expected PriceClass to be of type 'string'")
end

--  
function M.PriceClass(str)
	asserts.AssertPriceClass(str)
	return str
end

function asserts.AssertGeoRestrictionType(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoRestrictionType to be of type 'string'")
end

--  
function M.GeoRestrictionType(str)
	asserts.AssertGeoRestrictionType(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected Method to be of type 'string'")
end

--  
function M.Method(str)
	asserts.AssertMethod(str)
	return str
end

function asserts.AssertCertificateSource(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateSource to be of type 'string'")
end

--  
function M.CertificateSource(str)
	asserts.AssertCertificateSource(str)
	return str
end

function asserts.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	asserts.AssertEventType(str)
	return str
end

function asserts.AssertOriginProtocolPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected OriginProtocolPolicy to be of type 'string'")
end

--  
function M.OriginProtocolPolicy(str)
	asserts.AssertOriginProtocolPolicy(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertItemSelection(str)
	assert(str)
	assert(type(str) == "string", "Expected ItemSelection to be of type 'string'")
end

--  
function M.ItemSelection(str)
	asserts.AssertItemSelection(str)
	return str
end

function asserts.AssertSslProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected SslProtocol to be of type 'string'")
end

--  
function M.SslProtocol(str)
	asserts.AssertSslProtocol(str)
	return str
end

function asserts.AssertViewerProtocolPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ViewerProtocolPolicy to be of type 'string'")
end

--  
function M.ViewerProtocolPolicy(str)
	asserts.AssertViewerProtocolPolicy(str)
	return str
end

function asserts.Assertlong(long)
	assert(long)
	assert(type(long) == "number", "Expected long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.long(long)
	asserts.Assertlong(long)
	return long
end

function asserts.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	asserts.Assertinteger(integer)
	return integer
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertDistributionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DistributionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDistributionSummary(v)
	end
end

--  
-- List of DistributionSummary objects
function M.DistributionSummaryList(list)
	asserts.AssertDistributionSummaryList(list)
	return list
end

function asserts.AssertSignerList(list)
	assert(list)
	assert(type(list) == "table", "Expected SignerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSigner(v)
	end
end

--  
-- List of Signer objects
function M.SignerList(list)
	asserts.AssertSignerList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertSslProtocolsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SslProtocolsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSslProtocol(v)
	end
end

--  
-- List of SslProtocol objects
function M.SslProtocolsList(list)
	asserts.AssertSslProtocolsList(list)
	return list
end

function asserts.AssertKeyPairIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyPairIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.KeyPairIdList(list)
	asserts.AssertKeyPairIdList(list)
	return list
end

function asserts.AssertCacheBehaviorList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheBehaviorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheBehavior(v)
	end
end

--  
-- List of CacheBehavior objects
function M.CacheBehaviorList(list)
	asserts.AssertCacheBehaviorList(list)
	return list
end

function asserts.AssertCustomErrorResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomErrorResponseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCustomErrorResponse(v)
	end
end

--  
-- List of CustomErrorResponse objects
function M.CustomErrorResponseList(list)
	asserts.AssertCustomErrorResponseList(list)
	return list
end

function asserts.AssertAwsAccountNumberList(list)
	assert(list)
	assert(type(list) == "table", "Expected AwsAccountNumberList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.AwsAccountNumberList(list)
	asserts.AssertAwsAccountNumberList(list)
	return list
end

function asserts.AssertHeaderList(list)
	assert(list)
	assert(type(list) == "table", "Expected HeaderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.HeaderList(list)
	asserts.AssertHeaderList(list)
	return list
end

function asserts.AssertLambdaFunctionAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaFunctionAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLambdaFunctionAssociation(v)
	end
end

--  
-- List of LambdaFunctionAssociation objects
function M.LambdaFunctionAssociationList(list)
	asserts.AssertLambdaFunctionAssociationList(list)
	return list
end

function asserts.AssertStreamingDistributionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamingDistributionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStreamingDistributionSummary(v)
	end
end

--  
-- List of StreamingDistributionSummary objects
function M.StreamingDistributionSummaryList(list)
	asserts.AssertStreamingDistributionSummaryList(list)
	return list
end

function asserts.AssertPathList(list)
	assert(list)
	assert(type(list) == "table", "Expected PathList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.PathList(list)
	asserts.AssertPathList(list)
	return list
end

function asserts.AssertOriginList(list)
	assert(list)
	assert(type(list) == "table", "Expected OriginList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertOrigin(v)
	end
end

--  
-- List of Origin objects
function M.OriginList(list)
	asserts.AssertOriginList(list)
	return list
end

function asserts.AssertOriginCustomHeadersList(list)
	assert(list)
	assert(type(list) == "table", "Expected OriginCustomHeadersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOriginCustomHeader(v)
	end
end

--  
-- List of OriginCustomHeader objects
function M.OriginCustomHeadersList(list)
	asserts.AssertOriginCustomHeadersList(list)
	return list
end

function asserts.AssertCookieNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected CookieNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.CookieNameList(list)
	asserts.AssertCookieNameList(list)
	return list
end

function asserts.AssertLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.LocationList(list)
	asserts.AssertLocationList(list)
	return list
end

function asserts.AssertCloudFrontOriginAccessIdentitySummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudFrontOriginAccessIdentitySummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudFrontOriginAccessIdentitySummary(v)
	end
end

--  
-- List of CloudFrontOriginAccessIdentitySummary objects
function M.CloudFrontOriginAccessIdentitySummaryList(list)
	asserts.AssertCloudFrontOriginAccessIdentitySummaryList(list)
	return list
end

function asserts.AssertQueryStringCacheKeysList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryStringCacheKeysList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.QueryStringCacheKeysList(list)
	asserts.AssertQueryStringCacheKeysList(list)
	return list
end

function asserts.AssertMethodsList(list)
	assert(list)
	assert(type(list) == "table", "Expected MethodsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMethod(v)
	end
end

--  
-- List of Method objects
function M.MethodsList(list)
	asserts.AssertMethodsList(list)
	return list
end

function asserts.AssertInvalidationSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InvalidationSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInvalidationSummary(v)
	end
end

--  
-- List of InvalidationSummary objects
function M.InvalidationSummaryList(list)
	asserts.AssertInvalidationSummaryList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
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
			return "cloudfront.amazonaws.com"
		end
	end
	local ss = { "cloudfront" }
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
--- Call UpdateStreamingDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param UpdateStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStreamingDistribution2017_03_25Async(UpdateStreamingDistributionRequest, cb)
	assert(UpdateStreamingDistributionRequest, "You must provide a UpdateStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}/config", UpdateStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStreamingDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStreamingDistributionRequest
-- @return response
-- @return error_message
function M.UpdateStreamingDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStreamingDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDistributions2017_03_25 asynchronously, invoking a callback when done
-- @param ListDistributionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDistributions2017_03_25Async(ListDistributionsRequest, cb)
	assert(ListDistributionsRequest, "You must provide a ListDistributionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDistributions2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution", ListDistributionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListDistributions2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDistributionsRequest
-- @return response
-- @return error_message
function M.ListDistributions2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDistributions2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStreamingDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param GetStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStreamingDistribution2017_03_25Async(GetStreamingDistributionRequest, cb)
	assert(GetStreamingDistributionRequest, "You must provide a GetStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}", GetStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetStreamingDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStreamingDistributionRequest
-- @return response
-- @return error_message
function M.GetStreamingDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStreamingDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamingDistributionWithTags2017_03_25 asynchronously, invoking a callback when done
-- @param CreateStreamingDistributionWithTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamingDistributionWithTags2017_03_25Async(CreateStreamingDistributionWithTagsRequest, cb)
	assert(CreateStreamingDistributionWithTagsRequest, "You must provide a CreateStreamingDistributionWithTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateStreamingDistributionWithTags2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution?WithTags", CreateStreamingDistributionWithTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStreamingDistributionWithTags2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamingDistributionWithTagsRequest
-- @return response
-- @return error_message
function M.CreateStreamingDistributionWithTags2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingDistributionWithTags2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param CreateDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDistribution2017_03_25Async(CreateDistributionRequest, cb)
	assert(CreateDistributionRequest, "You must provide a CreateDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution", CreateDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDistributionRequest
-- @return response
-- @return error_message
function M.CreateDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInvalidations2017_03_25 asynchronously, invoking a callback when done
-- @param ListInvalidationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListInvalidations2017_03_25Async(ListInvalidationsRequest, cb)
	assert(ListInvalidationsRequest, "You must provide a ListInvalidationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListInvalidations2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{DistributionId}/invalidation", ListInvalidationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListInvalidations2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInvalidationsRequest
-- @return response
-- @return error_message
function M.ListInvalidations2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInvalidations2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreamingDistributions2017_03_25 asynchronously, invoking a callback when done
-- @param ListStreamingDistributionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListStreamingDistributions2017_03_25Async(ListStreamingDistributionsRequest, cb)
	assert(ListStreamingDistributionsRequest, "You must provide a ListStreamingDistributionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListStreamingDistributions2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution", ListStreamingDistributionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListStreamingDistributions2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamingDistributionsRequest
-- @return response
-- @return error_message
function M.ListStreamingDistributions2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamingDistributions2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param UpdateDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDistribution2017_03_25Async(UpdateDistributionRequest, cb)
	assert(UpdateDistributionRequest, "You must provide a UpdateDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}/config", UpdateDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDistributionRequest
-- @return response
-- @return error_message
function M.UpdateDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamingDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param CreateStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamingDistribution2017_03_25Async(CreateStreamingDistributionRequest, cb)
	assert(CreateStreamingDistributionRequest, "You must provide a CreateStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution", CreateStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStreamingDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamingDistributionRequest
-- @return response
-- @return error_message
function M.CreateStreamingDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param DeleteDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDistribution2017_03_25Async(DeleteDistributionRequest, cb)
	assert(DeleteDistributionRequest, "You must provide a DeleteDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}", DeleteDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDistributionRequest
-- @return response
-- @return error_message
function M.DeleteDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource2017_03_25 asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResource2017_03_25Async(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TagResource2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/tagging?Operation=Tag", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_message
function M.TagResource2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResource2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInvalidation2017_03_25 asynchronously, invoking a callback when done
-- @param GetInvalidationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInvalidation2017_03_25Async(GetInvalidationRequest, cb)
	assert(GetInvalidationRequest, "You must provide a GetInvalidationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetInvalidation2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{DistributionId}/invalidation/{Id}", GetInvalidationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetInvalidation2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInvalidationRequest
-- @return response
-- @return error_message
function M.GetInvalidation2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInvalidation2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCloudFrontOriginAccessIdentity2017_03_25 asynchronously, invoking a callback when done
-- @param DeleteCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCloudFrontOriginAccessIdentity2017_03_25Async(DeleteCloudFrontOriginAccessIdentityRequest, cb)
	assert(DeleteCloudFrontOriginAccessIdentityRequest, "You must provide a DeleteCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}", DeleteCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCloudFrontOriginAccessIdentity2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_message
function M.DeleteCloudFrontOriginAccessIdentity2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCloudFrontOriginAccessIdentity2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCloudFrontOriginAccessIdentities2017_03_25 asynchronously, invoking a callback when done
-- @param ListCloudFrontOriginAccessIdentitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCloudFrontOriginAccessIdentities2017_03_25Async(ListCloudFrontOriginAccessIdentitiesRequest, cb)
	assert(ListCloudFrontOriginAccessIdentitiesRequest, "You must provide a ListCloudFrontOriginAccessIdentitiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCloudFrontOriginAccessIdentities2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront", ListCloudFrontOriginAccessIdentitiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListCloudFrontOriginAccessIdentities2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCloudFrontOriginAccessIdentitiesRequest
-- @return response
-- @return error_message
function M.ListCloudFrontOriginAccessIdentities2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCloudFrontOriginAccessIdentities2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStreamingDistributionConfig2017_03_25 asynchronously, invoking a callback when done
-- @param GetStreamingDistributionConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStreamingDistributionConfig2017_03_25Async(GetStreamingDistributionConfigRequest, cb)
	assert(GetStreamingDistributionConfigRequest, "You must provide a GetStreamingDistributionConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStreamingDistributionConfig2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}/config", GetStreamingDistributionConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetStreamingDistributionConfig2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStreamingDistributionConfigRequest
-- @return response
-- @return error_message
function M.GetStreamingDistributionConfig2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStreamingDistributionConfig2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCloudFrontOriginAccessIdentity2017_03_25 asynchronously, invoking a callback when done
-- @param GetCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCloudFrontOriginAccessIdentity2017_03_25Async(GetCloudFrontOriginAccessIdentityRequest, cb)
	assert(GetCloudFrontOriginAccessIdentityRequest, "You must provide a GetCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}", GetCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetCloudFrontOriginAccessIdentity2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_message
function M.GetCloudFrontOriginAccessIdentity2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCloudFrontOriginAccessIdentity2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param GetDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDistribution2017_03_25Async(GetDistributionRequest, cb)
	assert(GetDistributionRequest, "You must provide a GetDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}", GetDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDistributionRequest
-- @return response
-- @return error_message
function M.GetDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCloudFrontOriginAccessIdentityConfig2017_03_25 asynchronously, invoking a callback when done
-- @param GetCloudFrontOriginAccessIdentityConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCloudFrontOriginAccessIdentityConfig2017_03_25Async(GetCloudFrontOriginAccessIdentityConfigRequest, cb)
	assert(GetCloudFrontOriginAccessIdentityConfigRequest, "You must provide a GetCloudFrontOriginAccessIdentityConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCloudFrontOriginAccessIdentityConfig2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}/config", GetCloudFrontOriginAccessIdentityConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetCloudFrontOriginAccessIdentityConfig2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCloudFrontOriginAccessIdentityConfigRequest
-- @return response
-- @return error_message
function M.GetCloudFrontOriginAccessIdentityConfig2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCloudFrontOriginAccessIdentityConfig2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDistributionConfig2017_03_25 asynchronously, invoking a callback when done
-- @param GetDistributionConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDistributionConfig2017_03_25Async(GetDistributionConfigRequest, cb)
	assert(GetDistributionConfigRequest, "You must provide a GetDistributionConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDistributionConfig2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}/config", GetDistributionConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetDistributionConfig2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDistributionConfigRequest
-- @return response
-- @return error_message
function M.GetDistributionConfig2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDistributionConfig2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCloudFrontOriginAccessIdentity2017_03_25 asynchronously, invoking a callback when done
-- @param CreateCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCloudFrontOriginAccessIdentity2017_03_25Async(CreateCloudFrontOriginAccessIdentityRequest, cb)
	assert(CreateCloudFrontOriginAccessIdentityRequest, "You must provide a CreateCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront", CreateCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCloudFrontOriginAccessIdentity2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_message
function M.CreateCloudFrontOriginAccessIdentity2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCloudFrontOriginAccessIdentity2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStreamingDistribution2017_03_25 asynchronously, invoking a callback when done
-- @param DeleteStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStreamingDistribution2017_03_25Async(DeleteStreamingDistributionRequest, cb)
	assert(DeleteStreamingDistributionRequest, "You must provide a DeleteStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}", DeleteStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStreamingDistribution2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStreamingDistributionRequest
-- @return response
-- @return error_message
function M.DeleteStreamingDistribution2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStreamingDistribution2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDistributionWithTags2017_03_25 asynchronously, invoking a callback when done
-- @param CreateDistributionWithTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDistributionWithTags2017_03_25Async(CreateDistributionWithTagsRequest, cb)
	assert(CreateDistributionWithTagsRequest, "You must provide a CreateDistributionWithTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDistributionWithTags2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution?WithTags", CreateDistributionWithTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDistributionWithTags2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDistributionWithTagsRequest
-- @return response
-- @return error_message
function M.CreateDistributionWithTags2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDistributionWithTags2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCloudFrontOriginAccessIdentity2017_03_25 asynchronously, invoking a callback when done
-- @param UpdateCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCloudFrontOriginAccessIdentity2017_03_25Async(UpdateCloudFrontOriginAccessIdentityRequest, cb)
	assert(UpdateCloudFrontOriginAccessIdentityRequest, "You must provide a UpdateCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}/config", UpdateCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCloudFrontOriginAccessIdentity2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_message
function M.UpdateCloudFrontOriginAccessIdentity2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCloudFrontOriginAccessIdentity2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource2017_03_25 asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResource2017_03_25Async(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UntagResource2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/tagging?Operation=Untag", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_message
function M.UntagResource2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResource2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInvalidation2017_03_25 asynchronously, invoking a callback when done
-- @param CreateInvalidationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInvalidation2017_03_25Async(CreateInvalidationRequest, cb)
	assert(CreateInvalidationRequest, "You must provide a CreateInvalidationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateInvalidation2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{DistributionId}/invalidation", CreateInvalidationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInvalidation2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInvalidationRequest
-- @return response
-- @return error_message
function M.CreateInvalidation2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInvalidation2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDistributionsByWebACLId2017_03_25 asynchronously, invoking a callback when done
-- @param ListDistributionsByWebACLIdRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDistributionsByWebACLId2017_03_25Async(ListDistributionsByWebACLIdRequest, cb)
	assert(ListDistributionsByWebACLIdRequest, "You must provide a ListDistributionsByWebACLIdRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDistributionsByWebACLId2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distributionsByWebACLId/{WebACLId}", ListDistributionsByWebACLIdRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListDistributionsByWebACLId2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDistributionsByWebACLIdRequest
-- @return response
-- @return error_message
function M.ListDistributionsByWebACLId2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDistributionsByWebACLId2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource2017_03_25 asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResource2017_03_25Async(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForResource2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/tagging", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource2017_03_25 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_message
function M.ListTagsForResource2017_03_25Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResource2017_03_25Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
