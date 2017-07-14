--- GENERATED CODE - DO NOT MODIFY
-- AWS Directory Service (ds-2015-04-16)

local M = {}

M.metadata = {
	api_version = "2015-04-16",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "ds",
	service_abbreviation = "Directory Service",
	service_full_name = "AWS Directory Service",
	signature_version = "v4",
	target_prefix = "DirectoryService_20150416",
	timestamp_format = "",
	global_endpoint = "",
	uid = "ds-2015-04-16",
}

local DirectoryVpcSettings_keys = { "SubnetIds" = true, "VpcId" = true, nil }

function M.AssertDirectoryVpcSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryVpcSettings to be of type 'table'")
	assert(struct["VpcId"], "Expected key VpcId to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryVpcSettings_keys[k], "DirectoryVpcSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryVpcSettings
-- <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
-- @param SubnetIds [SubnetIds] <p>The identifiers of the subnets for the directory servers. The two subnets must be in different Availability Zones. AWS Directory Service creates a directory server and a DNS server in each of these subnets.</p>
-- @param VpcId [VpcId] <p>The identifier of the VPC in which to create the directory.</p>
-- Required parameter: VpcId
-- Required parameter: SubnetIds
function M.DirectoryVpcSettings(SubnetIds, VpcId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryVpcSettings")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["VpcId"] = VpcId,
	}
	M.AssertDirectoryVpcSettings(t)
	return t
end

local UnsupportedOperationException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedOperationException_keys[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- <p>The operation is not supported.</p>
-- @param Message [ExceptionMessage] <p>The operation is not supported.</p>
-- @param RequestId [RequestId] <p>The operation is not supported.</p>
function M.UnsupportedOperationException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertUnsupportedOperationException(t)
	return t
end

local DisableSsoRequest_keys = { "UserName" = true, "DirectoryId" = true, "Password" = true, nil }

function M.AssertDisableSsoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSsoRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["UserName"] then M.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Password"] then M.AssertConnectPassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(DisableSsoRequest_keys[k], "DisableSsoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSsoRequest
-- <p>Contains the inputs for the <a>DisableSso</a> operation.</p>
-- @param UserName [UserName] <p>The username of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. This account must have privileges to remove a service principal name.</p> <p>If the AD Connector service account does not have privileges to remove a service principal name, you can specify an alternate account with the <i>UserName</i> and <i>Password</i> parameters. These credentials are only used to disable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to disable single-sign on.</p>
-- @param Password [ConnectPassword] <p>The password of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. For more information, see the <i>UserName</i> parameter.</p>
-- Required parameter: DirectoryId
function M.DisableSsoRequest(UserName, DirectoryId, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableSsoRequest")
	local t = { 
		["UserName"] = UserName,
		["DirectoryId"] = DirectoryId,
		["Password"] = Password,
	}
	M.AssertDisableSsoRequest(t)
	return t
end

local DeleteTrustRequest_keys = { "TrustId" = true, "DeleteAssociatedConditionalForwarder" = true, nil }

function M.AssertDeleteTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrustRequest to be of type 'table'")
	assert(struct["TrustId"], "Expected key TrustId to exist in table")
	if struct["TrustId"] then M.AssertTrustId(struct["TrustId"]) end
	if struct["DeleteAssociatedConditionalForwarder"] then M.AssertDeleteAssociatedConditionalForwarder(struct["DeleteAssociatedConditionalForwarder"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTrustRequest_keys[k], "DeleteTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrustRequest
-- <p>Deletes the local side of an existing trust relationship between the Microsoft AD in the AWS cloud and the external domain.</p>
-- @param TrustId [TrustId] <p>The Trust ID of the trust relationship to be deleted.</p>
-- @param DeleteAssociatedConditionalForwarder [DeleteAssociatedConditionalForwarder] <p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>
-- Required parameter: TrustId
function M.DeleteTrustRequest(TrustId, DeleteAssociatedConditionalForwarder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrustRequest")
	local t = { 
		["TrustId"] = TrustId,
		["DeleteAssociatedConditionalForwarder"] = DeleteAssociatedConditionalForwarder,
	}
	M.AssertDeleteTrustRequest(t)
	return t
end

local DescribeTrustsResult_keys = { "NextToken" = true, "Trusts" = true, nil }

function M.AssertDescribeTrustsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Trusts"] then M.AssertTrusts(struct["Trusts"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustsResult_keys[k], "DescribeTrustsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustsResult
-- <p>The result of a DescribeTrust request.</p>
-- @param NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>DescribeTrusts</a> to retrieve the next set of items.</p>
-- @param Trusts [Trusts] <p>The list of Trust objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
function M.DescribeTrustsResult(NextToken, Trusts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Trusts"] = Trusts,
	}
	M.AssertDescribeTrustsResult(t)
	return t
end

local DeleteDirectoryResult_keys = { "DirectoryId" = true, nil }

function M.AssertDeleteDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryResult to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDirectoryResult_keys[k], "DeleteDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryResult
-- <p>Contains the results of the <a>DeleteDirectory</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The directory identifier.</p>
function M.DeleteDirectoryResult(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDirectoryResult")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertDeleteDirectoryResult(t)
	return t
end

local DirectoryUnavailableException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertDirectoryUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryUnavailableException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryUnavailableException_keys[k], "DirectoryUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryUnavailableException
-- <p>The specified directory is unavailable or could not be found.</p>
-- @param Message [ExceptionMessage] <p>The specified directory is unavailable or could not be found.</p>
-- @param RequestId [RequestId] <p>The specified directory is unavailable or could not be found.</p>
function M.DirectoryUnavailableException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryUnavailableException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertDirectoryUnavailableException(t)
	return t
end

local InvalidParameterException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more parameters are not valid.</p>
-- @param Message [ExceptionMessage] <p>One or more parameters are not valid.</p>
-- @param RequestId [RequestId] <p>One or more parameters are not valid.</p>
function M.InvalidParameterException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local CreateAliasResult_keys = { "DirectoryId" = true, "Alias" = true, nil }

function M.AssertCreateAliasResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasResult to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Alias"] then M.AssertAliasName(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(CreateAliasResult_keys[k], "CreateAliasResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasResult
-- <p>Contains the results of the <a>CreateAlias</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory.</p>
-- @param Alias [AliasName] <p>The alias for the directory.</p>
function M.CreateAliasResult(DirectoryId, Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasResult")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["Alias"] = Alias,
	}
	M.AssertCreateAliasResult(t)
	return t
end

local CreateDirectoryResult_keys = { "DirectoryId" = true, nil }

function M.AssertCreateDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryResult to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDirectoryResult_keys[k], "CreateDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryResult
-- <p>Contains the results of the <a>CreateDirectory</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory that was created.</p>
function M.CreateDirectoryResult(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDirectoryResult")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertCreateDirectoryResult(t)
	return t
end

local ListIpRoutesRequest_keys = { "DirectoryId" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertListIpRoutesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIpRoutesRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListIpRoutesRequest_keys[k], "ListIpRoutesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIpRoutesRequest
--  
-- @param DirectoryId [DirectoryId] <p>Identifier (ID) of the directory for which you want to retrieve the IP addresses.</p>
-- @param NextToken [NextToken] <p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>
-- @param Limit [Limit] <p>Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>
-- Required parameter: DirectoryId
function M.ListIpRoutesRequest(DirectoryId, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIpRoutesRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertListIpRoutesRequest(t)
	return t
end

local GetSnapshotLimitsResult_keys = { "SnapshotLimits" = true, nil }

function M.AssertGetSnapshotLimitsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnapshotLimitsResult to be of type 'table'")
	if struct["SnapshotLimits"] then M.AssertSnapshotLimits(struct["SnapshotLimits"]) end
	for k,_ in pairs(struct) do
		assert(GetSnapshotLimitsResult_keys[k], "GetSnapshotLimitsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnapshotLimitsResult
-- <p>Contains the results of the <a>GetSnapshotLimits</a> operation.</p>
-- @param SnapshotLimits [SnapshotLimits] <p>A <a>SnapshotLimits</a> object that contains the manual snapshot limits for the specified directory.</p>
function M.GetSnapshotLimitsResult(SnapshotLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSnapshotLimitsResult")
	local t = { 
		["SnapshotLimits"] = SnapshotLimits,
	}
	M.AssertGetSnapshotLimitsResult(t)
	return t
end

local DisableSsoResult_keys = { nil }

function M.AssertDisableSsoResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSsoResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisableSsoResult_keys[k], "DisableSsoResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSsoResult
-- <p>Contains the results of the <a>DisableSso</a> operation.</p>
function M.DisableSsoResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableSsoResult")
	local t = { 
	}
	M.AssertDisableSsoResult(t)
	return t
end

local DescribeSnapshotsRequest_keys = { "DirectoryId" = true, "NextToken" = true, "Limit" = true, "SnapshotIds" = true, nil }

function M.AssertDescribeSnapshotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsRequest to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	if struct["SnapshotIds"] then M.AssertSnapshotIds(struct["SnapshotIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotsRequest_keys[k], "DescribeSnapshotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsRequest
-- <p>Contains the inputs for the <a>DescribeSnapshots</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to retrieve snapshot information.</p>
-- @param NextToken [NextToken] <p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>
-- @param Limit [Limit] <p>The maximum number of objects to return.</p>
-- @param SnapshotIds [SnapshotIds] <p>A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i> members.</p>
function M.DescribeSnapshotsRequest(DirectoryId, NextToken, Limit, SnapshotIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotsRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["SnapshotIds"] = SnapshotIds,
	}
	M.AssertDescribeSnapshotsRequest(t)
	return t
end

local DeleteSnapshotRequest_keys = { "SnapshotId" = true, nil }

function M.AssertDeleteSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotRequest to be of type 'table'")
	assert(struct["SnapshotId"], "Expected key SnapshotId to exist in table")
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotRequest_keys[k], "DeleteSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotRequest
-- <p>Contains the inputs for the <a>DeleteSnapshot</a> operation.</p>
-- @param SnapshotId [SnapshotId] <p>The identifier of the directory snapshot to be deleted.</p>
-- Required parameter: SnapshotId
function M.DeleteSnapshotRequest(SnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotRequest")
	local t = { 
		["SnapshotId"] = SnapshotId,
	}
	M.AssertDeleteSnapshotRequest(t)
	return t
end

local ListTagsForResourceResult_keys = { "NextToken" = true, "Tags" = true, nil }

function M.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResult_keys[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
--  
-- @param NextToken [NextToken] <p>Reserved for future use.</p>
-- @param Tags [Tags] <p>List of tags returned by the ListTagsForResource operation.</p>
function M.ListTagsForResourceResult(NextToken, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResult")
	local t = { 
		["NextToken"] = NextToken,
		["Tags"] = Tags,
	}
	M.AssertListTagsForResourceResult(t)
	return t
end

local DeleteSnapshotResult_keys = { "SnapshotId" = true, nil }

function M.AssertDeleteSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotResult to be of type 'table'")
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotResult_keys[k], "DeleteSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotResult
-- <p>Contains the results of the <a>DeleteSnapshot</a> operation.</p>
-- @param SnapshotId [SnapshotId] <p>The identifier of the directory snapshot that was deleted.</p>
function M.DeleteSnapshotResult(SnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotResult")
	local t = { 
		["SnapshotId"] = SnapshotId,
	}
	M.AssertDeleteSnapshotResult(t)
	return t
end

local InsufficientPermissionsException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertInsufficientPermissionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientPermissionsException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(InsufficientPermissionsException_keys[k], "InsufficientPermissionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientPermissionsException
-- <p>The account does not have sufficient permission to perform the operation.</p>
-- @param Message [ExceptionMessage] <p>The account does not have sufficient permission to perform the operation.</p>
-- @param RequestId [RequestId] <p>The account does not have sufficient permission to perform the operation.</p>
function M.InsufficientPermissionsException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientPermissionsException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertInsufficientPermissionsException(t)
	return t
end

local DirectoryDescription_keys = { "AccessUrl" = true, "DirectoryId" = true, "SsoEnabled" = true, "Name" = true, "RadiusStatus" = true, "DnsIpAddrs" = true, "VpcSettings" = true, "ConnectSettings" = true, "RadiusSettings" = true, "StageLastUpdatedDateTime" = true, "Alias" = true, "LaunchTime" = true, "StageReason" = true, "Description" = true, "ShortName" = true, "Stage" = true, "Type" = true, "Size" = true, nil }

function M.AssertDirectoryDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryDescription to be of type 'table'")
	if struct["AccessUrl"] then M.AssertAccessUrl(struct["AccessUrl"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["SsoEnabled"] then M.AssertSsoEnabled(struct["SsoEnabled"]) end
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	if struct["RadiusStatus"] then M.AssertRadiusStatus(struct["RadiusStatus"]) end
	if struct["DnsIpAddrs"] then M.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	if struct["VpcSettings"] then M.AssertDirectoryVpcSettingsDescription(struct["VpcSettings"]) end
	if struct["ConnectSettings"] then M.AssertDirectoryConnectSettingsDescription(struct["ConnectSettings"]) end
	if struct["RadiusSettings"] then M.AssertRadiusSettings(struct["RadiusSettings"]) end
	if struct["StageLastUpdatedDateTime"] then M.AssertLastUpdatedDateTime(struct["StageLastUpdatedDateTime"]) end
	if struct["Alias"] then M.AssertAliasName(struct["Alias"]) end
	if struct["LaunchTime"] then M.AssertLaunchTime(struct["LaunchTime"]) end
	if struct["StageReason"] then M.AssertStageReason(struct["StageReason"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["ShortName"] then M.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Stage"] then M.AssertDirectoryStage(struct["Stage"]) end
	if struct["Type"] then M.AssertDirectoryType(struct["Type"]) end
	if struct["Size"] then M.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryDescription_keys[k], "DirectoryDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryDescription
-- <p>Contains information about an AWS Directory Service directory.</p>
-- @param AccessUrl [AccessUrl] <p>The access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>. If no alias has been created for the directory, <code>&lt;alias&gt;</code> is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
-- @param DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- @param SsoEnabled [SsoEnabled] <p>Indicates if single-sign on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>
-- @param Name [DirectoryName] <p>The fully-qualified name of the directory.</p>
-- @param RadiusStatus [RadiusStatus] <p>The status of the RADIUS MFA server connection.</p>
-- @param DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers in the on-premises directory to which the AD Connector is connected.</p>
-- @param VpcSettings [DirectoryVpcSettingsDescription] <p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional information about a directory. This member is only present if the directory is a Simple AD or Managed AD directory.</p>
-- @param ConnectSettings [DirectoryConnectSettingsDescription] <p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional information about an AD Connector directory. This member is only present if the directory is an AD Connector directory.</p>
-- @param RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server configured for this directory.</p>
-- @param StageLastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the stage was last updated.</p>
-- @param Alias [AliasName] <p>The alias for the directory. If no alias has been created for the directory, the alias is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
-- @param LaunchTime [LaunchTime] <p>Specifies when the directory was created.</p>
-- @param StageReason [StageReason] <p>Additional information about the directory stage.</p>
-- @param Description [Description] <p>The textual description for the directory.</p>
-- @param ShortName [DirectoryShortName] <p>The short name of the directory.</p>
-- @param Stage [DirectoryStage] <p>The current stage of the directory.</p>
-- @param Type [DirectoryType] <p>The directory size.</p>
-- @param Size [DirectorySize] <p>The directory size.</p>
function M.DirectoryDescription(AccessUrl, DirectoryId, SsoEnabled, Name, RadiusStatus, DnsIpAddrs, VpcSettings, ConnectSettings, RadiusSettings, StageLastUpdatedDateTime, Alias, LaunchTime, StageReason, Description, ShortName, Stage, Type, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryDescription")
	local t = { 
		["AccessUrl"] = AccessUrl,
		["DirectoryId"] = DirectoryId,
		["SsoEnabled"] = SsoEnabled,
		["Name"] = Name,
		["RadiusStatus"] = RadiusStatus,
		["DnsIpAddrs"] = DnsIpAddrs,
		["VpcSettings"] = VpcSettings,
		["ConnectSettings"] = ConnectSettings,
		["RadiusSettings"] = RadiusSettings,
		["StageLastUpdatedDateTime"] = StageLastUpdatedDateTime,
		["Alias"] = Alias,
		["LaunchTime"] = LaunchTime,
		["StageReason"] = StageReason,
		["Description"] = Description,
		["ShortName"] = ShortName,
		["Stage"] = Stage,
		["Type"] = Type,
		["Size"] = Size,
	}
	M.AssertDirectoryDescription(t)
	return t
end

local RegisterEventTopicRequest_keys = { "DirectoryId" = true, "TopicName" = true, nil }

function M.AssertRegisterEventTopicRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEventTopicRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["TopicName"], "Expected key TopicName to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicName"] then M.AssertTopicName(struct["TopicName"]) end
	for k,_ in pairs(struct) do
		assert(RegisterEventTopicRequest_keys[k], "RegisterEventTopicRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEventTopicRequest
-- <p>Registers a new event topic.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID that will publish status messages to the SNS topic.</p>
-- @param TopicName [TopicName] <p>The SNS topic name to which the directory will publish status messages. This SNS topic must be in the same region as the specified Directory ID.</p>
-- Required parameter: DirectoryId
-- Required parameter: TopicName
function M.RegisterEventTopicRequest(DirectoryId, TopicName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterEventTopicRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["TopicName"] = TopicName,
	}
	M.AssertRegisterEventTopicRequest(t)
	return t
end

local IpRouteLimitExceededException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertIpRouteLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRouteLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(IpRouteLimitExceededException_keys[k], "IpRouteLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRouteLimitExceededException
-- <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.</p>
-- @param Message [ExceptionMessage] <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.</p>
-- @param RequestId [RequestId] <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.</p>
function M.IpRouteLimitExceededException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IpRouteLimitExceededException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertIpRouteLimitExceededException(t)
	return t
end

local Trust_keys = { "DirectoryId" = true, "StateLastUpdatedDateTime" = true, "LastUpdatedDateTime" = true, "CreatedDateTime" = true, "TrustStateReason" = true, "RemoteDomainName" = true, "TrustType" = true, "TrustId" = true, "TrustDirection" = true, "TrustState" = true, nil }

function M.AssertTrust(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trust to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["StateLastUpdatedDateTime"] then M.AssertStateLastUpdatedDateTime(struct["StateLastUpdatedDateTime"]) end
	if struct["LastUpdatedDateTime"] then M.AssertLastUpdatedDateTime(struct["LastUpdatedDateTime"]) end
	if struct["CreatedDateTime"] then M.AssertCreatedDateTime(struct["CreatedDateTime"]) end
	if struct["TrustStateReason"] then M.AssertTrustStateReason(struct["TrustStateReason"]) end
	if struct["RemoteDomainName"] then M.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["TrustType"] then M.AssertTrustType(struct["TrustType"]) end
	if struct["TrustId"] then M.AssertTrustId(struct["TrustId"]) end
	if struct["TrustDirection"] then M.AssertTrustDirection(struct["TrustDirection"]) end
	if struct["TrustState"] then M.AssertTrustState(struct["TrustState"]) end
	for k,_ in pairs(struct) do
		assert(Trust_keys[k], "Trust contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trust
-- <p>Describes a trust relationship between an Microsoft AD in the AWS cloud and an external domain.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID of the AWS directory involved in the trust relationship.</p>
-- @param StateLastUpdatedDateTime [StateLastUpdatedDateTime] <p>The date and time that the TrustState was last updated.</p>
-- @param LastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the trust relationship was last updated.</p>
-- @param CreatedDateTime [CreatedDateTime] <p>The date and time that the trust relationship was created.</p>
-- @param TrustStateReason [TrustStateReason] <p>The reason for the TrustState.</p>
-- @param RemoteDomainName [RemoteDomainName] <p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust relationship.</p>
-- @param TrustType [TrustType] <p>The trust relationship type.</p>
-- @param TrustId [TrustId] <p>The unique ID of the trust relationship.</p>
-- @param TrustDirection [TrustDirection] <p>The trust relationship direction.</p>
-- @param TrustState [TrustState] <p>The trust relationship state.</p>
function M.Trust(DirectoryId, StateLastUpdatedDateTime, LastUpdatedDateTime, CreatedDateTime, TrustStateReason, RemoteDomainName, TrustType, TrustId, TrustDirection, TrustState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Trust")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["StateLastUpdatedDateTime"] = StateLastUpdatedDateTime,
		["LastUpdatedDateTime"] = LastUpdatedDateTime,
		["CreatedDateTime"] = CreatedDateTime,
		["TrustStateReason"] = TrustStateReason,
		["RemoteDomainName"] = RemoteDomainName,
		["TrustType"] = TrustType,
		["TrustId"] = TrustId,
		["TrustDirection"] = TrustDirection,
		["TrustState"] = TrustState,
	}
	M.AssertTrust(t)
	return t
end

local DescribeConditionalForwardersResult_keys = { "ConditionalForwarders" = true, nil }

function M.AssertDescribeConditionalForwardersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConditionalForwardersResult to be of type 'table'")
	if struct["ConditionalForwarders"] then M.AssertConditionalForwarders(struct["ConditionalForwarders"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConditionalForwardersResult_keys[k], "DescribeConditionalForwardersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConditionalForwardersResult
-- <p>The result of a DescribeConditionalForwarder request.</p>
-- @param ConditionalForwarders [ConditionalForwarders] <p>The list of conditional forwarders that have been created.</p>
function M.DescribeConditionalForwardersResult(ConditionalForwarders, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConditionalForwardersResult")
	local t = { 
		["ConditionalForwarders"] = ConditionalForwarders,
	}
	M.AssertDescribeConditionalForwardersResult(t)
	return t
end

local RemoveTagsFromResourceResult_keys = { nil }

function M.AssertRemoveTagsFromResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceResult_keys[k], "RemoveTagsFromResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResult
--  
function M.RemoveTagsFromResourceResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceResult")
	local t = { 
	}
	M.AssertRemoveTagsFromResourceResult(t)
	return t
end

local ListSchemaExtensionsResult_keys = { "SchemaExtensionsInfo" = true, "NextToken" = true, nil }

function M.AssertListSchemaExtensionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSchemaExtensionsResult to be of type 'table'")
	if struct["SchemaExtensionsInfo"] then M.AssertSchemaExtensionsInfo(struct["SchemaExtensionsInfo"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListSchemaExtensionsResult_keys[k], "ListSchemaExtensionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSchemaExtensionsResult
--  
-- @param SchemaExtensionsInfo [SchemaExtensionsInfo] <p>Information about the schema extensions applied to the directory.</p>
-- @param NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <code>ListSchemaExtensions</code> to retrieve the next set of items.</p>
function M.ListSchemaExtensionsResult(SchemaExtensionsInfo, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSchemaExtensionsResult")
	local t = { 
		["SchemaExtensionsInfo"] = SchemaExtensionsInfo,
		["NextToken"] = NextToken,
	}
	M.AssertListSchemaExtensionsResult(t)
	return t
end

local DirectoryLimitExceededException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertDirectoryLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryLimitExceededException_keys[k], "DirectoryLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryLimitExceededException
-- <p>The maximum number of directories in the region has been reached. You can use the <a>GetDirectoryLimits</a> operation to determine your directory limits in the region.</p>
-- @param Message [ExceptionMessage] <p>The maximum number of directories in the region has been reached. You can use the <a>GetDirectoryLimits</a> operation to determine your directory limits in the region.</p>
-- @param RequestId [RequestId] <p>The maximum number of directories in the region has been reached. You can use the <a>GetDirectoryLimits</a> operation to determine your directory limits in the region.</p>
function M.DirectoryLimitExceededException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryLimitExceededException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertDirectoryLimitExceededException(t)
	return t
end

local AddTagsToResourceRequest_keys = { "ResourceId" = true, "Tags" = true, nil }

function M.AssertAddTagsToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceRequest_keys[k], "AddTagsToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceRequest
--  
-- @param ResourceId [ResourceId] <p>Identifier (ID) for the directory to which to add the tag.</p>
-- @param Tags [Tags] <p>The tags to be assigned to the directory.</p>
-- Required parameter: ResourceId
-- Required parameter: Tags
function M.AddTagsToResourceRequest(ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToResourceRequest(t)
	return t
end

local InvalidNextTokenException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The <i>NextToken</i> value is not valid.</p>
-- @param Message [ExceptionMessage] <p>The <i>NextToken</i> value is not valid.</p>
-- @param RequestId [RequestId] <p>The <i>NextToken</i> value is not valid.</p>
function M.InvalidNextTokenException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local RemoveIpRoutesRequest_keys = { "DirectoryId" = true, "CidrIps" = true, nil }

function M.AssertRemoveIpRoutesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveIpRoutesRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["CidrIps"], "Expected key CidrIps to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["CidrIps"] then M.AssertCidrIps(struct["CidrIps"]) end
	for k,_ in pairs(struct) do
		assert(RemoveIpRoutesRequest_keys[k], "RemoveIpRoutesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveIpRoutesRequest
--  
-- @param DirectoryId [DirectoryId] <p>Identifier (ID) of the directory from which you want to remove the IP addresses.</p>
-- @param CidrIps [CidrIps] <p>IP address blocks that you want to remove.</p>
-- Required parameter: DirectoryId
-- Required parameter: CidrIps
function M.RemoveIpRoutesRequest(DirectoryId, CidrIps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveIpRoutesRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["CidrIps"] = CidrIps,
	}
	M.AssertRemoveIpRoutesRequest(t)
	return t
end

local DescribeConditionalForwardersRequest_keys = { "DirectoryId" = true, "RemoteDomainNames" = true, nil }

function M.AssertDescribeConditionalForwardersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConditionalForwardersRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainNames"] then M.AssertRemoteDomainNames(struct["RemoteDomainNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConditionalForwardersRequest_keys[k], "DescribeConditionalForwardersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConditionalForwardersRequest
-- <p>Describes a conditional forwarder.</p>
-- @param DirectoryId [DirectoryId] <p>The directory ID for which to get the list of associated conditional forwarders.</p>
-- @param RemoteDomainNames [RemoteDomainNames] <p>The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.</p>
-- Required parameter: DirectoryId
function M.DescribeConditionalForwardersRequest(DirectoryId, RemoteDomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConditionalForwardersRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["RemoteDomainNames"] = RemoteDomainNames,
	}
	M.AssertDescribeConditionalForwardersRequest(t)
	return t
end

local DirectoryConnectSettingsDescription_keys = { "CustomerUserName" = true, "VpcId" = true, "SubnetIds" = true, "SecurityGroupId" = true, "AvailabilityZones" = true, "ConnectIps" = true, nil }

function M.AssertDirectoryConnectSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryConnectSettingsDescription to be of type 'table'")
	if struct["CustomerUserName"] then M.AssertUserName(struct["CustomerUserName"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["SecurityGroupId"] then M.AssertSecurityGroupId(struct["SecurityGroupId"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["ConnectIps"] then M.AssertIpAddrs(struct["ConnectIps"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryConnectSettingsDescription_keys[k], "DirectoryConnectSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryConnectSettingsDescription
-- <p>Contains information about an AD Connector directory.</p>
-- @param CustomerUserName [UserName] <p>The username of the service account in the on-premises directory.</p>
-- @param VpcId [VpcId] <p>The identifier of the VPC that the AD Connector is in.</p>
-- @param SubnetIds [SubnetIds] <p>A list of subnet identifiers in the VPC that the AD connector is in.</p>
-- @param SecurityGroupId [SecurityGroupId] <p>The security group identifier for the AD Connector directory.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>A list of the Availability Zones that the directory is in.</p>
-- @param ConnectIps [IpAddrs] <p>The IP addresses of the AD Connector servers.</p>
function M.DirectoryConnectSettingsDescription(CustomerUserName, VpcId, SubnetIds, SecurityGroupId, AvailabilityZones, ConnectIps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryConnectSettingsDescription")
	local t = { 
		["CustomerUserName"] = CustomerUserName,
		["VpcId"] = VpcId,
		["SubnetIds"] = SubnetIds,
		["SecurityGroupId"] = SecurityGroupId,
		["AvailabilityZones"] = AvailabilityZones,
		["ConnectIps"] = ConnectIps,
	}
	M.AssertDirectoryConnectSettingsDescription(t)
	return t
end

local ConnectDirectoryRequest_keys = { "Name" = true, "ConnectSettings" = true, "Description" = true, "ShortName" = true, "Password" = true, "Size" = true, nil }

function M.AssertConnectDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectDirectoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	assert(struct["ConnectSettings"], "Expected key ConnectSettings to exist in table")
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	if struct["ConnectSettings"] then M.AssertDirectoryConnectSettings(struct["ConnectSettings"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["ShortName"] then M.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then M.AssertConnectPassword(struct["Password"]) end
	if struct["Size"] then M.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(ConnectDirectoryRequest_keys[k], "ConnectDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectDirectoryRequest
-- <p>Contains the inputs for the <a>ConnectDirectory</a> operation.</p>
-- @param Name [DirectoryName] <p>The fully-qualified name of the on-premises directory, such as <code>corp.example.com</code>.</p>
-- @param ConnectSettings [DirectoryConnectSettings] <p>A <a>DirectoryConnectSettings</a> object that contains additional information for the operation.</p>
-- @param Description [Description] <p>A textual description for the directory.</p>
-- @param ShortName [DirectoryShortName] <p>The NetBIOS name of the on-premises directory, such as <code>CORP</code>.</p>
-- @param Password [ConnectPassword] <p>The password for the on-premises user account.</p>
-- @param Size [DirectorySize] <p>The size of the directory.</p>
-- Required parameter: Name
-- Required parameter: Password
-- Required parameter: Size
-- Required parameter: ConnectSettings
function M.ConnectDirectoryRequest(Name, ConnectSettings, Description, ShortName, Password, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConnectDirectoryRequest")
	local t = { 
		["Name"] = Name,
		["ConnectSettings"] = ConnectSettings,
		["Description"] = Description,
		["ShortName"] = ShortName,
		["Password"] = Password,
		["Size"] = Size,
	}
	M.AssertConnectDirectoryRequest(t)
	return t
end

local VerifyTrustRequest_keys = { "TrustId" = true, nil }

function M.AssertVerifyTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyTrustRequest to be of type 'table'")
	assert(struct["TrustId"], "Expected key TrustId to exist in table")
	if struct["TrustId"] then M.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(VerifyTrustRequest_keys[k], "VerifyTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyTrustRequest
-- <p>Initiates the verification of an existing trust relationship between a Microsoft AD in the AWS cloud and an external domain.</p>
-- @param TrustId [TrustId] <p>The unique Trust ID of the trust relationship to verify.</p>
-- Required parameter: TrustId
function M.VerifyTrustRequest(TrustId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyTrustRequest")
	local t = { 
		["TrustId"] = TrustId,
	}
	M.AssertVerifyTrustRequest(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata assigned to a directory consisting of a key-value pair.</p>
-- @param Value [TagValue] <p>The optional value of the tag. The string value can be Unicode characters. The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- @param Key [TagKey] <p>Required name of the tag. The string value can be Unicode characters and cannot be prefixed with "aws:". The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local AddIpRoutesResult_keys = { nil }

function M.AssertAddIpRoutesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddIpRoutesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddIpRoutesResult_keys[k], "AddIpRoutesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddIpRoutesResult
--  
function M.AddIpRoutesResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddIpRoutesResult")
	local t = { 
	}
	M.AssertAddIpRoutesResult(t)
	return t
end

local CreateComputerRequest_keys = { "DirectoryId" = true, "ComputerName" = true, "Password" = true, "ComputerAttributes" = true, "OrganizationalUnitDistinguishedName" = true, nil }

function M.AssertCreateComputerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputerRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["ComputerName"], "Expected key ComputerName to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ComputerName"] then M.AssertComputerName(struct["ComputerName"]) end
	if struct["Password"] then M.AssertComputerPassword(struct["Password"]) end
	if struct["ComputerAttributes"] then M.AssertAttributes(struct["ComputerAttributes"]) end
	if struct["OrganizationalUnitDistinguishedName"] then M.AssertOrganizationalUnitDN(struct["OrganizationalUnitDistinguishedName"]) end
	for k,_ in pairs(struct) do
		assert(CreateComputerRequest_keys[k], "CreateComputerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputerRequest
-- <p>Contains the inputs for the <a>CreateComputer</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory in which to create the computer account.</p>
-- @param ComputerName [ComputerName] <p>The name of the computer account.</p>
-- @param Password [ComputerPassword] <p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>
-- @param ComputerAttributes [Attributes] <p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the computer account.</p>
-- @param OrganizationalUnitDistinguishedName [OrganizationalUnitDN] <p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>
-- Required parameter: DirectoryId
-- Required parameter: ComputerName
-- Required parameter: Password
function M.CreateComputerRequest(DirectoryId, ComputerName, Password, ComputerAttributes, OrganizationalUnitDistinguishedName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateComputerRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["ComputerName"] = ComputerName,
		["Password"] = Password,
		["ComputerAttributes"] = ComputerAttributes,
		["OrganizationalUnitDistinguishedName"] = OrganizationalUnitDistinguishedName,
	}
	M.AssertCreateComputerRequest(t)
	return t
end

local EnableRadiusRequest_keys = { "DirectoryId" = true, "RadiusSettings" = true, nil }

function M.AssertEnableRadiusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableRadiusRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RadiusSettings"], "Expected key RadiusSettings to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RadiusSettings"] then M.AssertRadiusSettings(struct["RadiusSettings"]) end
	for k,_ in pairs(struct) do
		assert(EnableRadiusRequest_keys[k], "EnableRadiusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableRadiusRequest
-- <p>Contains the inputs for the <a>EnableRadius</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to enable MFA.</p>
-- @param RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>
-- Required parameter: DirectoryId
-- Required parameter: RadiusSettings
function M.EnableRadiusRequest(DirectoryId, RadiusSettings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableRadiusRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["RadiusSettings"] = RadiusSettings,
	}
	M.AssertEnableRadiusRequest(t)
	return t
end

local DirectoryVpcSettingsDescription_keys = { "SubnetIds" = true, "VpcId" = true, "AvailabilityZones" = true, "SecurityGroupId" = true, nil }

function M.AssertDirectoryVpcSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryVpcSettingsDescription to be of type 'table'")
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["SecurityGroupId"] then M.AssertSecurityGroupId(struct["SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryVpcSettingsDescription_keys[k], "DirectoryVpcSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryVpcSettingsDescription
-- <p>Contains information about the directory.</p>
-- @param SubnetIds [SubnetIds] <p>The identifiers of the subnets for the directory servers.</p>
-- @param VpcId [VpcId] <p>The identifier of the VPC that the directory is in.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>The list of Availability Zones that the directory is in.</p>
-- @param SecurityGroupId [SecurityGroupId] <p>The security group identifier for the directory. If the directory was created before 8/1/2014, this is the identifier of the directory members security group that was created when the directory was created. If the directory was created after this date, this value is null.</p>
function M.DirectoryVpcSettingsDescription(SubnetIds, VpcId, AvailabilityZones, SecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryVpcSettingsDescription")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["VpcId"] = VpcId,
		["AvailabilityZones"] = AvailabilityZones,
		["SecurityGroupId"] = SecurityGroupId,
	}
	M.AssertDirectoryVpcSettingsDescription(t)
	return t
end

local ClientException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(ClientException_keys[k], "ClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientException
-- <p>A client exception has occurred.</p>
-- @param Message [ExceptionMessage] <p>A client exception has occurred.</p>
-- @param RequestId [RequestId] <p>A client exception has occurred.</p>
function M.ClientException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClientException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertClientException(t)
	return t
end

local CreateTrustResult_keys = { "TrustId" = true, nil }

function M.AssertCreateTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrustResult to be of type 'table'")
	if struct["TrustId"] then M.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrustResult_keys[k], "CreateTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrustResult
-- <p>The result of a CreateTrust request.</p>
-- @param TrustId [TrustId] <p>A unique identifier for the trust relationship that was created.</p>
function M.CreateTrustResult(TrustId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrustResult")
	local t = { 
		["TrustId"] = TrustId,
	}
	M.AssertCreateTrustResult(t)
	return t
end

local SchemaExtensionInfo_keys = { "DirectoryId" = true, "Description" = true, "SchemaExtensionStatus" = true, "SchemaExtensionId" = true, "EndDateTime" = true, "StartDateTime" = true, "SchemaExtensionStatusReason" = true, nil }

function M.AssertSchemaExtensionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaExtensionInfo to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["SchemaExtensionStatus"] then M.AssertSchemaExtensionStatus(struct["SchemaExtensionStatus"]) end
	if struct["SchemaExtensionId"] then M.AssertSchemaExtensionId(struct["SchemaExtensionId"]) end
	if struct["EndDateTime"] then M.AssertEndDateTime(struct["EndDateTime"]) end
	if struct["StartDateTime"] then M.AssertStartDateTime(struct["StartDateTime"]) end
	if struct["SchemaExtensionStatusReason"] then M.AssertSchemaExtensionStatusReason(struct["SchemaExtensionStatusReason"]) end
	for k,_ in pairs(struct) do
		assert(SchemaExtensionInfo_keys[k], "SchemaExtensionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaExtensionInfo
-- <p>Information about a schema extension.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory to which the schema extension is applied.</p>
-- @param Description [Description] <p>A description of the schema extension.</p>
-- @param SchemaExtensionStatus [SchemaExtensionStatus] <p>The current status of the schema extension.</p>
-- @param SchemaExtensionId [SchemaExtensionId] <p>The identifier of the schema extension.</p>
-- @param EndDateTime [EndDateTime] <p>The date and time that the schema extension was completed.</p>
-- @param StartDateTime [StartDateTime] <p>The date and time that the schema extension started being applied to the directory.</p>
-- @param SchemaExtensionStatusReason [SchemaExtensionStatusReason] <p>The reason for the <code>SchemaExtensionStatus</code>.</p>
function M.SchemaExtensionInfo(DirectoryId, Description, SchemaExtensionStatus, SchemaExtensionId, EndDateTime, StartDateTime, SchemaExtensionStatusReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaExtensionInfo")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["Description"] = Description,
		["SchemaExtensionStatus"] = SchemaExtensionStatus,
		["SchemaExtensionId"] = SchemaExtensionId,
		["EndDateTime"] = EndDateTime,
		["StartDateTime"] = StartDateTime,
		["SchemaExtensionStatusReason"] = SchemaExtensionStatusReason,
	}
	M.AssertSchemaExtensionInfo(t)
	return t
end

local RemoveIpRoutesResult_keys = { nil }

function M.AssertRemoveIpRoutesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveIpRoutesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveIpRoutesResult_keys[k], "RemoveIpRoutesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveIpRoutesResult
--  
function M.RemoveIpRoutesResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveIpRoutesResult")
	local t = { 
	}
	M.AssertRemoveIpRoutesResult(t)
	return t
end

local ListIpRoutesResult_keys = { "IpRoutesInfo" = true, "NextToken" = true, nil }

function M.AssertListIpRoutesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIpRoutesResult to be of type 'table'")
	if struct["IpRoutesInfo"] then M.AssertIpRoutesInfo(struct["IpRoutesInfo"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListIpRoutesResult_keys[k], "ListIpRoutesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIpRoutesResult
--  
-- @param IpRoutesInfo [IpRoutesInfo] <p>A list of <a>IpRoute</a>s.</p>
-- @param NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>ListIpRoutes</a> to retrieve the next set of items.</p>
function M.ListIpRoutesResult(IpRoutesInfo, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIpRoutesResult")
	local t = { 
		["IpRoutesInfo"] = IpRoutesInfo,
		["NextToken"] = NextToken,
	}
	M.AssertListIpRoutesResult(t)
	return t
end

local DeleteConditionalForwarderRequest_keys = { "DirectoryId" = true, "RemoteDomainName" = true, nil }

function M.AssertDeleteConditionalForwarderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConditionalForwarderRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then M.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConditionalForwarderRequest_keys[k], "DeleteConditionalForwarderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConditionalForwarderRequest
-- <p>Deletes a conditional forwarder.</p>
-- @param DirectoryId [DirectoryId] <p>The directory ID for which you are deleting the conditional forwarder.</p>
-- @param RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.</p>
-- Required parameter: DirectoryId
-- Required parameter: RemoteDomainName
function M.DeleteConditionalForwarderRequest(DirectoryId, RemoteDomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConditionalForwarderRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["RemoteDomainName"] = RemoteDomainName,
	}
	M.AssertDeleteConditionalForwarderRequest(t)
	return t
end

local Computer_keys = { "ComputerName" = true, "ComputerAttributes" = true, "ComputerId" = true, nil }

function M.AssertComputer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Computer to be of type 'table'")
	if struct["ComputerName"] then M.AssertComputerName(struct["ComputerName"]) end
	if struct["ComputerAttributes"] then M.AssertAttributes(struct["ComputerAttributes"]) end
	if struct["ComputerId"] then M.AssertSID(struct["ComputerId"]) end
	for k,_ in pairs(struct) do
		assert(Computer_keys[k], "Computer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Computer
-- <p>Contains information about a computer account in a directory.</p>
-- @param ComputerName [ComputerName] <p>The computer name.</p>
-- @param ComputerAttributes [Attributes] <p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the computer account.</p>
-- @param ComputerId [SID] <p>The identifier of the computer.</p>
function M.Computer(ComputerName, ComputerAttributes, ComputerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Computer")
	local t = { 
		["ComputerName"] = ComputerName,
		["ComputerAttributes"] = ComputerAttributes,
		["ComputerId"] = ComputerId,
	}
	M.AssertComputer(t)
	return t
end

local DirectoryConnectSettings_keys = { "CustomerDnsIps" = true, "CustomerUserName" = true, "SubnetIds" = true, "VpcId" = true, nil }

function M.AssertDirectoryConnectSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryConnectSettings to be of type 'table'")
	assert(struct["VpcId"], "Expected key VpcId to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	assert(struct["CustomerDnsIps"], "Expected key CustomerDnsIps to exist in table")
	assert(struct["CustomerUserName"], "Expected key CustomerUserName to exist in table")
	if struct["CustomerDnsIps"] then M.AssertDnsIpAddrs(struct["CustomerDnsIps"]) end
	if struct["CustomerUserName"] then M.AssertUserName(struct["CustomerUserName"]) end
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryConnectSettings_keys[k], "DirectoryConnectSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryConnectSettings
-- <p>Contains information for the <a>ConnectDirectory</a> operation when an AD Connector directory is being created.</p>
-- @param CustomerDnsIps [DnsIpAddrs] <p>A list of one or more IP addresses of DNS servers or domain controllers in the on-premises directory.</p>
-- @param CustomerUserName [UserName] <p>The username of an account in the on-premises directory that is used to connect to the directory. This account must have the following privileges:</p> <ul> <li> <p>Read users and groups</p> </li> <li> <p>Create computer objects</p> </li> <li> <p>Join computers to the domain</p> </li> </ul>
-- @param SubnetIds [SubnetIds] <p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>
-- @param VpcId [VpcId] <p>The identifier of the VPC in which the AD Connector is created.</p>
-- Required parameter: VpcId
-- Required parameter: SubnetIds
-- Required parameter: CustomerDnsIps
-- Required parameter: CustomerUserName
function M.DirectoryConnectSettings(CustomerDnsIps, CustomerUserName, SubnetIds, VpcId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryConnectSettings")
	local t = { 
		["CustomerDnsIps"] = CustomerDnsIps,
		["CustomerUserName"] = CustomerUserName,
		["SubnetIds"] = SubnetIds,
		["VpcId"] = VpcId,
	}
	M.AssertDirectoryConnectSettings(t)
	return t
end

local ListSchemaExtensionsRequest_keys = { "DirectoryId" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertListSchemaExtensionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSchemaExtensionsRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListSchemaExtensionsRequest_keys[k], "ListSchemaExtensionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSchemaExtensionsRequest
--  
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory from which to retrieve the schema extension information.</p>
-- @param NextToken [NextToken] <p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>
-- @param Limit [Limit] <p>The maximum number of items to return.</p>
-- Required parameter: DirectoryId
function M.ListSchemaExtensionsRequest(DirectoryId, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSchemaExtensionsRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertListSchemaExtensionsRequest(t)
	return t
end

local DescribeEventTopicsResult_keys = { "EventTopics" = true, nil }

function M.AssertDescribeEventTopicsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTopicsResult to be of type 'table'")
	if struct["EventTopics"] then M.AssertEventTopics(struct["EventTopics"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventTopicsResult_keys[k], "DescribeEventTopicsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTopicsResult
-- <p>The result of a DescribeEventTopic request.</p>
-- @param EventTopics [EventTopics] <p>A list of SNS topic names that receive status messages from the specified Directory ID.</p>
function M.DescribeEventTopicsResult(EventTopics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventTopicsResult")
	local t = { 
		["EventTopics"] = EventTopics,
	}
	M.AssertDescribeEventTopicsResult(t)
	return t
end

local DeregisterEventTopicRequest_keys = { "DirectoryId" = true, "TopicName" = true, nil }

function M.AssertDeregisterEventTopicRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEventTopicRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["TopicName"], "Expected key TopicName to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicName"] then M.AssertTopicName(struct["TopicName"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterEventTopicRequest_keys[k], "DeregisterEventTopicRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEventTopicRequest
-- <p>Removes the specified directory as a publisher to the specified SNS topic.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.</p>
-- @param TopicName [TopicName] <p>The name of the SNS topic from which to remove the directory as a publisher.</p>
-- Required parameter: DirectoryId
-- Required parameter: TopicName
function M.DeregisterEventTopicRequest(DirectoryId, TopicName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterEventTopicRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["TopicName"] = TopicName,
	}
	M.AssertDeregisterEventTopicRequest(t)
	return t
end

local VerifyTrustResult_keys = { "TrustId" = true, nil }

function M.AssertVerifyTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyTrustResult to be of type 'table'")
	if struct["TrustId"] then M.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(VerifyTrustResult_keys[k], "VerifyTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyTrustResult
-- <p>Result of a VerifyTrust request.</p>
-- @param TrustId [TrustId] <p>The unique Trust ID of the trust relationship that was verified.</p>
function M.VerifyTrustResult(TrustId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyTrustResult")
	local t = { 
		["TrustId"] = TrustId,
	}
	M.AssertVerifyTrustResult(t)
	return t
end

local CreateConditionalForwarderResult_keys = { nil }

function M.AssertCreateConditionalForwarderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConditionalForwarderResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateConditionalForwarderResult_keys[k], "CreateConditionalForwarderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConditionalForwarderResult
-- <p>The result of a CreateConditinalForwarder request.</p>
function M.CreateConditionalForwarderResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConditionalForwarderResult")
	local t = { 
	}
	M.AssertCreateConditionalForwarderResult(t)
	return t
end

local DescribeDirectoriesResult_keys = { "DirectoryDescriptions" = true, "NextToken" = true, nil }

function M.AssertDescribeDirectoriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectoriesResult to be of type 'table'")
	if struct["DirectoryDescriptions"] then M.AssertDirectoryDescriptions(struct["DirectoryDescriptions"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDirectoriesResult_keys[k], "DescribeDirectoriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectoriesResult
-- <p>Contains the results of the <a>DescribeDirectories</a> operation.</p>
-- @param DirectoryDescriptions [DirectoryDescriptions] <p>The list of <a>DirectoryDescription</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
-- @param NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next set of items.</p>
function M.DescribeDirectoriesResult(DirectoryDescriptions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDirectoriesResult")
	local t = { 
		["DirectoryDescriptions"] = DirectoryDescriptions,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeDirectoriesResult(t)
	return t
end

local GetSnapshotLimitsRequest_keys = { "DirectoryId" = true, nil }

function M.AssertGetSnapshotLimitsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnapshotLimitsRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(GetSnapshotLimitsRequest_keys[k], "GetSnapshotLimitsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnapshotLimitsRequest
-- <p>Contains the inputs for the <a>GetSnapshotLimits</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>Contains the identifier of the directory to obtain the limits for.</p>
-- Required parameter: DirectoryId
function M.GetSnapshotLimitsRequest(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSnapshotLimitsRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertGetSnapshotLimitsRequest(t)
	return t
end

local CreateMicrosoftADRequest_keys = { "ShortName" = true, "Password" = true, "Name" = true, "VpcSettings" = true, "Description" = true, nil }

function M.AssertCreateMicrosoftADRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMicrosoftADRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["VpcSettings"], "Expected key VpcSettings to exist in table")
	if struct["ShortName"] then M.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then M.AssertPassword(struct["Password"]) end
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	if struct["VpcSettings"] then M.AssertDirectoryVpcSettings(struct["VpcSettings"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateMicrosoftADRequest_keys[k], "CreateMicrosoftADRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMicrosoftADRequest
-- <p>Creates a Microsoft AD in the AWS cloud.</p>
-- @param ShortName [DirectoryShortName] <p>The NetBIOS name for your domain. A short identifier for your domain, such as <code>CORP</code>. If you don't specify a NetBIOS name, it will default to the first part of your directory DNS. For example, <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>
-- @param Password [Password] <p>The password for the default administrative user named <code>Admin</code>.</p>
-- @param Name [DirectoryName] <p>The fully qualified domain name for the directory, such as <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need to be publicly resolvable.</p>
-- @param VpcSettings [DirectoryVpcSettings] <p>Creates a Microsoft AD in the AWS cloud.</p>
-- @param Description [Description] <p>A textual description for the directory. This label will appear on the AWS console <code>Directory Details</code> page after the directory is created.</p>
-- Required parameter: Name
-- Required parameter: Password
-- Required parameter: VpcSettings
function M.CreateMicrosoftADRequest(ShortName, Password, Name, VpcSettings, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMicrosoftADRequest")
	local t = { 
		["ShortName"] = ShortName,
		["Password"] = Password,
		["Name"] = Name,
		["VpcSettings"] = VpcSettings,
		["Description"] = Description,
	}
	M.AssertCreateMicrosoftADRequest(t)
	return t
end

local DescribeEventTopicsRequest_keys = { "DirectoryId" = true, "TopicNames" = true, nil }

function M.AssertDescribeEventTopicsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTopicsRequest to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicNames"] then M.AssertTopicNames(struct["TopicNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventTopicsRequest_keys[k], "DescribeEventTopicsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTopicsRequest
-- <p>Describes event topics.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID for which to get the list of associated SNS topics. If this member is null, associations for all Directory IDs are returned.</p>
-- @param TopicNames [TopicNames] <p>A list of SNS topic names for which to obtain the information. If this member is null, all associations for the specified Directory ID are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
function M.DescribeEventTopicsRequest(DirectoryId, TopicNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventTopicsRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["TopicNames"] = TopicNames,
	}
	M.AssertDescribeEventTopicsRequest(t)
	return t
end

local DescribeTrustsRequest_keys = { "Limit" = true, "DirectoryId" = true, "NextToken" = true, "TrustIds" = true, nil }

function M.AssertDescribeTrustsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustsRequest to be of type 'table'")
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["TrustIds"] then M.AssertTrustIds(struct["TrustIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustsRequest_keys[k], "DescribeTrustsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustsRequest
-- <p>Describes the trust relationships for a particular Microsoft AD in the AWS cloud. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.</p>
-- @param Limit [Limit] <p>The maximum number of objects to return.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID of the AWS directory that is a part of the requested trust relationship.</p>
-- @param NextToken [NextToken] <p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to <a>DescribeTrusts</a>. Pass null if this is the first call.</p>
-- @param TrustIds [TrustIds] <p>A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
function M.DescribeTrustsRequest(Limit, DirectoryId, NextToken, TrustIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustsRequest")
	local t = { 
		["Limit"] = Limit,
		["DirectoryId"] = DirectoryId,
		["NextToken"] = NextToken,
		["TrustIds"] = TrustIds,
	}
	M.AssertDescribeTrustsRequest(t)
	return t
end

local ListTagsForResourceRequest_keys = { "ResourceId" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param ResourceId [ResourceId] <p>Identifier (ID) of the directory for which you want to retrieve tags.</p>
-- @param NextToken [NextToken] <p>Reserved for future use.</p>
-- @param Limit [Limit] <p>Reserved for future use.</p>
-- Required parameter: ResourceId
function M.ListTagsForResourceRequest(ResourceId, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local UpdateRadiusResult_keys = { nil }

function M.AssertUpdateRadiusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRadiusResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateRadiusResult_keys[k], "UpdateRadiusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRadiusResult
-- <p>Contains the results of the <a>UpdateRadius</a> operation.</p>
function M.UpdateRadiusResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRadiusResult")
	local t = { 
	}
	M.AssertUpdateRadiusResult(t)
	return t
end

local DisableRadiusRequest_keys = { "DirectoryId" = true, nil }

function M.AssertDisableRadiusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableRadiusRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(DisableRadiusRequest_keys[k], "DisableRadiusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableRadiusRequest
-- <p>Contains the inputs for the <a>DisableRadius</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to disable MFA.</p>
-- Required parameter: DirectoryId
function M.DisableRadiusRequest(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableRadiusRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertDisableRadiusRequest(t)
	return t
end

local AuthenticationFailedException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertAuthenticationFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthenticationFailedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(AuthenticationFailedException_keys[k], "AuthenticationFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthenticationFailedException
-- <p>An authentication error occurred.</p>
-- @param Message [ExceptionMessage] <p>The textual message for the exception.</p>
-- @param RequestId [RequestId] <p>The identifier of the request that caused the exception.</p>
function M.AuthenticationFailedException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthenticationFailedException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertAuthenticationFailedException(t)
	return t
end

local ServiceException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(ServiceException_keys[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>An exception has occurred in AWS Directory Service.</p>
-- @param Message [ExceptionMessage] <p>An exception has occurred in AWS Directory Service.</p>
-- @param RequestId [RequestId] <p>An exception has occurred in AWS Directory Service.</p>
function M.ServiceException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertServiceException(t)
	return t
end

local CreateAliasRequest_keys = { "DirectoryId" = true, "Alias" = true, nil }

function M.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["Alias"], "Expected key Alias to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Alias"] then M.AssertAliasName(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(CreateAliasRequest_keys[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
-- <p>Contains the inputs for the <a>CreateAlias</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to create the alias.</p>
-- @param Alias [AliasName] <p>The requested alias.</p> <p>The alias must be unique amongst all aliases in AWS. This operation throws an <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>
-- Required parameter: DirectoryId
-- Required parameter: Alias
function M.CreateAliasRequest(DirectoryId, Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["Alias"] = Alias,
	}
	M.AssertCreateAliasRequest(t)
	return t
end

local ConditionalForwarder_keys = { "RemoteDomainName" = true, "DnsIpAddrs" = true, "ReplicationScope" = true, nil }

function M.AssertConditionalForwarder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConditionalForwarder to be of type 'table'")
	if struct["RemoteDomainName"] then M.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["DnsIpAddrs"] then M.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	if struct["ReplicationScope"] then M.AssertReplicationScope(struct["ReplicationScope"]) end
	for k,_ in pairs(struct) do
		assert(ConditionalForwarder_keys[k], "ConditionalForwarder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConditionalForwarder
-- <p>Points to a remote domain with which you are setting up a trust relationship. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>
-- @param RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domains pointed to by the conditional forwarder.</p>
-- @param DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName. This is the IP address of the DNS server that your conditional forwarder points to.</p>
-- @param ReplicationScope [ReplicationScope] <p>The replication scope of the conditional forwarder. The only allowed value is <code>Domain</code>, which will replicate the conditional forwarder to all of the domain controllers for your AWS directory.</p>
function M.ConditionalForwarder(RemoteDomainName, DnsIpAddrs, ReplicationScope, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConditionalForwarder")
	local t = { 
		["RemoteDomainName"] = RemoteDomainName,
		["DnsIpAddrs"] = DnsIpAddrs,
		["ReplicationScope"] = ReplicationScope,
	}
	M.AssertConditionalForwarder(t)
	return t
end

local AddIpRoutesRequest_keys = { "DirectoryId" = true, "UpdateSecurityGroupForDirectoryControllers" = true, "IpRoutes" = true, nil }

function M.AssertAddIpRoutesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddIpRoutesRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["IpRoutes"], "Expected key IpRoutes to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["UpdateSecurityGroupForDirectoryControllers"] then M.AssertUpdateSecurityGroupForDirectoryControllers(struct["UpdateSecurityGroupForDirectoryControllers"]) end
	if struct["IpRoutes"] then M.AssertIpRoutes(struct["IpRoutes"]) end
	for k,_ in pairs(struct) do
		assert(AddIpRoutesRequest_keys[k], "AddIpRoutesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddIpRoutesRequest
--  
-- @param DirectoryId [DirectoryId] <p>Identifier (ID) of the directory to which to add the address block.</p>
-- @param UpdateSecurityGroupForDirectoryControllers [UpdateSecurityGroupForDirectoryControllers] <p>If set to true, updates the inbound and outbound rules of the security group that has the description: "AWS created security group for <i>directory ID</i> directory controllers." Following are the new rules: </p> <p>Inbound:</p> <ul> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source: 0.0.0.0/0</p> </li> <li> <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0</p> </li> <li> <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0</p> </li> <li> <p>Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0</p> </li> <li> <p>Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0</p> </li> </ul> <p/> <p>Outbound:</p> <ul> <li> <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p> </li> </ul> <p>These security rules impact an internal network interface that is not exposed publicly.</p>
-- @param IpRoutes [IpRoutes] <p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP address block of the DNS server used for your on-premises domain.</p>
-- Required parameter: DirectoryId
-- Required parameter: IpRoutes
function M.AddIpRoutesRequest(DirectoryId, UpdateSecurityGroupForDirectoryControllers, IpRoutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddIpRoutesRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["UpdateSecurityGroupForDirectoryControllers"] = UpdateSecurityGroupForDirectoryControllers,
		["IpRoutes"] = IpRoutes,
	}
	M.AssertAddIpRoutesRequest(t)
	return t
end

local RegisterEventTopicResult_keys = { nil }

function M.AssertRegisterEventTopicResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEventTopicResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RegisterEventTopicResult_keys[k], "RegisterEventTopicResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEventTopicResult
-- <p>The result of a RegisterEventTopic request.</p>
function M.RegisterEventTopicResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterEventTopicResult")
	local t = { 
	}
	M.AssertRegisterEventTopicResult(t)
	return t
end

local RemoveTagsFromResourceRequest_keys = { "ResourceId" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["TagKeys"] then M.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceRequest_keys[k], "RemoveTagsFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceRequest
--  
-- @param ResourceId [ResourceId] <p>Identifier (ID) of the directory from which to remove the tag.</p>
-- @param TagKeys [TagKeys] <p>The tag key (name) of the tag to be removed.</p>
-- Required parameter: ResourceId
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceRequest(ResourceId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsFromResourceRequest(t)
	return t
end

local CreateTrustRequest_keys = { "TrustPassword" = true, "DirectoryId" = true, "RemoteDomainName" = true, "ConditionalForwarderIpAddrs" = true, "TrustType" = true, "TrustDirection" = true, nil }

function M.AssertCreateTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrustRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	assert(struct["TrustPassword"], "Expected key TrustPassword to exist in table")
	assert(struct["TrustDirection"], "Expected key TrustDirection to exist in table")
	if struct["TrustPassword"] then M.AssertTrustPassword(struct["TrustPassword"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then M.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["ConditionalForwarderIpAddrs"] then M.AssertDnsIpAddrs(struct["ConditionalForwarderIpAddrs"]) end
	if struct["TrustType"] then M.AssertTrustType(struct["TrustType"]) end
	if struct["TrustDirection"] then M.AssertTrustDirection(struct["TrustDirection"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrustRequest_keys[k], "CreateTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrustRequest
-- <p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your Microsoft AD in the AWS cloud, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between a Microsoft AD in the AWS cloud and an external domain.</p>
-- @param TrustPassword [TrustPassword] <p>The trust password. The must be the same password that was used when creating the trust relationship on the external domain.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID of the Microsoft AD in the AWS cloud for which to establish the trust relationship.</p>
-- @param RemoteDomainName [RemoteDomainName] <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.</p>
-- @param ConditionalForwarderIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
-- @param TrustType [TrustType] <p>The trust relationship type.</p>
-- @param TrustDirection [TrustDirection] <p>The direction of the trust relationship.</p>
-- Required parameter: DirectoryId
-- Required parameter: RemoteDomainName
-- Required parameter: TrustPassword
-- Required parameter: TrustDirection
function M.CreateTrustRequest(TrustPassword, DirectoryId, RemoteDomainName, ConditionalForwarderIpAddrs, TrustType, TrustDirection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrustRequest")
	local t = { 
		["TrustPassword"] = TrustPassword,
		["DirectoryId"] = DirectoryId,
		["RemoteDomainName"] = RemoteDomainName,
		["ConditionalForwarderIpAddrs"] = ConditionalForwarderIpAddrs,
		["TrustType"] = TrustType,
		["TrustDirection"] = TrustDirection,
	}
	M.AssertCreateTrustRequest(t)
	return t
end

local CancelSchemaExtensionRequest_keys = { "DirectoryId" = true, "SchemaExtensionId" = true, nil }

function M.AssertCancelSchemaExtensionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelSchemaExtensionRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["SchemaExtensionId"], "Expected key SchemaExtensionId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["SchemaExtensionId"] then M.AssertSchemaExtensionId(struct["SchemaExtensionId"]) end
	for k,_ in pairs(struct) do
		assert(CancelSchemaExtensionRequest_keys[k], "CancelSchemaExtensionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelSchemaExtensionRequest
--  
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory whose schema extension will be canceled.</p>
-- @param SchemaExtensionId [SchemaExtensionId] <p>The identifier of the schema extension that will be canceled.</p>
-- Required parameter: DirectoryId
-- Required parameter: SchemaExtensionId
function M.CancelSchemaExtensionRequest(DirectoryId, SchemaExtensionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelSchemaExtensionRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["SchemaExtensionId"] = SchemaExtensionId,
	}
	M.AssertCancelSchemaExtensionRequest(t)
	return t
end

local UpdateRadiusRequest_keys = { "DirectoryId" = true, "RadiusSettings" = true, nil }

function M.AssertUpdateRadiusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRadiusRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RadiusSettings"], "Expected key RadiusSettings to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RadiusSettings"] then M.AssertRadiusSettings(struct["RadiusSettings"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRadiusRequest_keys[k], "UpdateRadiusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRadiusRequest
-- <p>Contains the inputs for the <a>UpdateRadius</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to update the RADIUS server information.</p>
-- @param RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>
-- Required parameter: DirectoryId
-- Required parameter: RadiusSettings
function M.UpdateRadiusRequest(DirectoryId, RadiusSettings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRadiusRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["RadiusSettings"] = RadiusSettings,
	}
	M.AssertUpdateRadiusRequest(t)
	return t
end

local Snapshot_keys = { "Status" = true, "DirectoryId" = true, "Name" = true, "StartTime" = true, "SnapshotId" = true, "Type" = true, nil }

function M.AssertSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Snapshot to be of type 'table'")
	if struct["Status"] then M.AssertSnapshotStatus(struct["Status"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Name"] then M.AssertSnapshotName(struct["Name"]) end
	if struct["StartTime"] then M.AssertStartTime(struct["StartTime"]) end
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["Type"] then M.AssertSnapshotType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(Snapshot_keys[k], "Snapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Snapshot
-- <p>Describes a directory snapshot.</p>
-- @param Status [SnapshotStatus] <p>The snapshot status.</p>
-- @param DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- @param Name [SnapshotName] <p>The descriptive name of the snapshot.</p>
-- @param StartTime [StartTime] <p>The date and time that the snapshot was taken.</p>
-- @param SnapshotId [SnapshotId] <p>The snapshot identifier.</p>
-- @param Type [SnapshotType] <p>The snapshot type.</p>
function M.Snapshot(Status, DirectoryId, Name, StartTime, SnapshotId, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Snapshot")
	local t = { 
		["Status"] = Status,
		["DirectoryId"] = DirectoryId,
		["Name"] = Name,
		["StartTime"] = StartTime,
		["SnapshotId"] = SnapshotId,
		["Type"] = Type,
	}
	M.AssertSnapshot(t)
	return t
end

local CreateMicrosoftADResult_keys = { "DirectoryId" = true, nil }

function M.AssertCreateMicrosoftADResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMicrosoftADResult to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(CreateMicrosoftADResult_keys[k], "CreateMicrosoftADResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMicrosoftADResult
-- <p>Result of a CreateMicrosoftAD request.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory that was created.</p>
function M.CreateMicrosoftADResult(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMicrosoftADResult")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertCreateMicrosoftADResult(t)
	return t
end

local EnableSsoResult_keys = { nil }

function M.AssertEnableSsoResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSsoResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EnableSsoResult_keys[k], "EnableSsoResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSsoResult
-- <p>Contains the results of the <a>EnableSso</a> operation.</p>
function M.EnableSsoResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableSsoResult")
	local t = { 
	}
	M.AssertEnableSsoResult(t)
	return t
end

local CreateDirectoryRequest_keys = { "Name" = true, "VpcSettings" = true, "Description" = true, "ShortName" = true, "Password" = true, "Size" = true, nil }

function M.AssertCreateDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	if struct["VpcSettings"] then M.AssertDirectoryVpcSettings(struct["VpcSettings"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["ShortName"] then M.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then M.AssertPassword(struct["Password"]) end
	if struct["Size"] then M.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(CreateDirectoryRequest_keys[k], "CreateDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryRequest
-- <p>Contains the inputs for the <a>CreateDirectory</a> operation. </p>
-- @param Name [DirectoryName] <p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>
-- @param VpcSettings [DirectoryVpcSettings] <p>A <a>DirectoryVpcSettings</a> object that contains additional information for the operation.</p>
-- @param Description [Description] <p>A textual description for the directory.</p>
-- @param ShortName [DirectoryShortName] <p>The short name of the directory, such as <code>CORP</code>.</p>
-- @param Password [Password] <p>The password for the directory administrator. The directory creation process creates a directory administrator account with the username <code>Administrator</code> and this password.</p>
-- @param Size [DirectorySize] <p>The size of the directory.</p>
-- Required parameter: Name
-- Required parameter: Password
-- Required parameter: Size
function M.CreateDirectoryRequest(Name, VpcSettings, Description, ShortName, Password, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDirectoryRequest")
	local t = { 
		["Name"] = Name,
		["VpcSettings"] = VpcSettings,
		["Description"] = Description,
		["ShortName"] = ShortName,
		["Password"] = Password,
		["Size"] = Size,
	}
	M.AssertCreateDirectoryRequest(t)
	return t
end

local RestoreFromSnapshotRequest_keys = { "SnapshotId" = true, nil }

function M.AssertRestoreFromSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromSnapshotRequest to be of type 'table'")
	assert(struct["SnapshotId"], "Expected key SnapshotId to exist in table")
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(RestoreFromSnapshotRequest_keys[k], "RestoreFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromSnapshotRequest
-- <p>An object representing the inputs for the <a>RestoreFromSnapshot</a> operation.</p>
-- @param SnapshotId [SnapshotId] <p>The identifier of the snapshot to restore from.</p>
-- Required parameter: SnapshotId
function M.RestoreFromSnapshotRequest(SnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreFromSnapshotRequest")
	local t = { 
		["SnapshotId"] = SnapshotId,
	}
	M.AssertRestoreFromSnapshotRequest(t)
	return t
end

local Attribute_keys = { "Name" = true, "Value" = true, nil }

function M.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	if struct["Name"] then M.AssertAttributeName(struct["Name"]) end
	if struct["Value"] then M.AssertAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Attribute_keys[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p>Represents a named directory attribute.</p>
-- @param Name [AttributeName] <p>The name of the attribute.</p>
-- @param Value [AttributeValue] <p>The value of the attribute.</p>
function M.Attribute(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertAttribute(t)
	return t
end

local DescribeSnapshotsResult_keys = { "NextToken" = true, "Snapshots" = true, nil }

function M.AssertDescribeSnapshotsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Snapshots"] then M.AssertSnapshots(struct["Snapshots"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotsResult_keys[k], "DescribeSnapshotsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsResult
-- <p>Contains the results of the <a>DescribeSnapshots</a> operation.</p>
-- @param NextToken [NextToken] <p>If not null, more results are available. Pass this value in the <i>NextToken</i> member of a subsequent call to <a>DescribeSnapshots</a>.</p>
-- @param Snapshots [Snapshots] <p>The list of <a>Snapshot</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
function M.DescribeSnapshotsResult(NextToken, Snapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Snapshots"] = Snapshots,
	}
	M.AssertDescribeSnapshotsResult(t)
	return t
end

local GetDirectoryLimitsRequest_keys = { nil }

function M.AssertGetDirectoryLimitsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryLimitsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetDirectoryLimitsRequest_keys[k], "GetDirectoryLimitsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryLimitsRequest
-- <p>Contains the inputs for the <a>GetDirectoryLimits</a> operation.</p>
function M.GetDirectoryLimitsRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDirectoryLimitsRequest")
	local t = { 
	}
	M.AssertGetDirectoryLimitsRequest(t)
	return t
end

local CreateSnapshotRequest_keys = { "DirectoryId" = true, "Name" = true, nil }

function M.AssertCreateSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Name"] then M.AssertSnapshotName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotRequest_keys[k], "CreateSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotRequest
-- <p>Contains the inputs for the <a>CreateSnapshot</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory of which to take a snapshot.</p>
-- @param Name [SnapshotName] <p>The descriptive name to apply to the snapshot.</p>
-- Required parameter: DirectoryId
function M.CreateSnapshotRequest(DirectoryId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["Name"] = Name,
	}
	M.AssertCreateSnapshotRequest(t)
	return t
end

local DescribeDirectoriesRequest_keys = { "DirectoryIds" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertDescribeDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectoriesRequest to be of type 'table'")
	if struct["DirectoryIds"] then M.AssertDirectoryIds(struct["DirectoryIds"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDirectoriesRequest_keys[k], "DescribeDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectoriesRequest
-- <p>Contains the inputs for the <a>DescribeDirectories</a> operation.</p>
-- @param DirectoryIds [DirectoryIds] <p>A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
-- @param NextToken [NextToken] <p>The <i>DescribeDirectoriesResult.NextToken</i> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>
-- @param Limit [Limit] <p>The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>
function M.DescribeDirectoriesRequest(DirectoryIds, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDirectoriesRequest")
	local t = { 
		["DirectoryIds"] = DirectoryIds,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertDescribeDirectoriesRequest(t)
	return t
end

local CreateSnapshotResult_keys = { "SnapshotId" = true, nil }

function M.AssertCreateSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotResult to be of type 'table'")
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotResult_keys[k], "CreateSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotResult
-- <p>Contains the results of the <a>CreateSnapshot</a> operation.</p>
-- @param SnapshotId [SnapshotId] <p>The identifier of the snapshot that was created.</p>
function M.CreateSnapshotResult(SnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotResult")
	local t = { 
		["SnapshotId"] = SnapshotId,
	}
	M.AssertCreateSnapshotResult(t)
	return t
end

local CancelSchemaExtensionResult_keys = { nil }

function M.AssertCancelSchemaExtensionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelSchemaExtensionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CancelSchemaExtensionResult_keys[k], "CancelSchemaExtensionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelSchemaExtensionResult
--  
function M.CancelSchemaExtensionResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelSchemaExtensionResult")
	local t = { 
	}
	M.AssertCancelSchemaExtensionResult(t)
	return t
end

local UpdateConditionalForwarderRequest_keys = { "DirectoryId" = true, "RemoteDomainName" = true, "DnsIpAddrs" = true, nil }

function M.AssertUpdateConditionalForwarderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConditionalForwarderRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	assert(struct["DnsIpAddrs"], "Expected key DnsIpAddrs to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then M.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["DnsIpAddrs"] then M.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	for k,_ in pairs(struct) do
		assert(UpdateConditionalForwarderRequest_keys[k], "UpdateConditionalForwarderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConditionalForwarderRequest
-- <p>Updates a conditional forwarder.</p>
-- @param DirectoryId [DirectoryId] <p>The directory ID of the AWS directory for which to update the conditional forwarder.</p>
-- @param RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.</p>
-- @param DnsIpAddrs [DnsIpAddrs] <p>The updated IP addresses of the remote DNS server associated with the conditional forwarder.</p>
-- Required parameter: DirectoryId
-- Required parameter: RemoteDomainName
-- Required parameter: DnsIpAddrs
function M.UpdateConditionalForwarderRequest(DirectoryId, RemoteDomainName, DnsIpAddrs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConditionalForwarderRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["RemoteDomainName"] = RemoteDomainName,
		["DnsIpAddrs"] = DnsIpAddrs,
	}
	M.AssertUpdateConditionalForwarderRequest(t)
	return t
end

local CreateConditionalForwarderRequest_keys = { "DirectoryId" = true, "RemoteDomainName" = true, "DnsIpAddrs" = true, nil }

function M.AssertCreateConditionalForwarderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConditionalForwarderRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	assert(struct["DnsIpAddrs"], "Expected key DnsIpAddrs to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then M.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["DnsIpAddrs"] then M.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	for k,_ in pairs(struct) do
		assert(CreateConditionalForwarderRequest_keys[k], "CreateConditionalForwarderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConditionalForwarderRequest
-- <p>Initiates the creation of a conditional forwarder for your AWS Directory Service for Microsoft Active Directory. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>
-- @param DirectoryId [DirectoryId] <p>The directory ID of the AWS directory for which you are creating the conditional forwarder.</p>
-- @param RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.</p>
-- @param DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
-- Required parameter: DirectoryId
-- Required parameter: RemoteDomainName
-- Required parameter: DnsIpAddrs
function M.CreateConditionalForwarderRequest(DirectoryId, RemoteDomainName, DnsIpAddrs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConditionalForwarderRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["RemoteDomainName"] = RemoteDomainName,
		["DnsIpAddrs"] = DnsIpAddrs,
	}
	M.AssertCreateConditionalForwarderRequest(t)
	return t
end

local AddTagsToResourceResult_keys = { nil }

function M.AssertAddTagsToResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceResult_keys[k], "AddTagsToResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResult
--  
function M.AddTagsToResourceResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceResult")
	local t = { 
	}
	M.AssertAddTagsToResourceResult(t)
	return t
end

local DeregisterEventTopicResult_keys = { nil }

function M.AssertDeregisterEventTopicResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEventTopicResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeregisterEventTopicResult_keys[k], "DeregisterEventTopicResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEventTopicResult
-- <p>The result of a DeregisterEventTopic request.</p>
function M.DeregisterEventTopicResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterEventTopicResult")
	local t = { 
	}
	M.AssertDeregisterEventTopicResult(t)
	return t
end

local DeleteConditionalForwarderResult_keys = { nil }

function M.AssertDeleteConditionalForwarderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConditionalForwarderResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteConditionalForwarderResult_keys[k], "DeleteConditionalForwarderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConditionalForwarderResult
-- <p>The result of a DeleteConditionalForwarder request.</p>
function M.DeleteConditionalForwarderResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConditionalForwarderResult")
	local t = { 
	}
	M.AssertDeleteConditionalForwarderResult(t)
	return t
end

local ConnectDirectoryResult_keys = { "DirectoryId" = true, nil }

function M.AssertConnectDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectDirectoryResult to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(ConnectDirectoryResult_keys[k], "ConnectDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectDirectoryResult
-- <p>Contains the results of the <a>ConnectDirectory</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the new directory.</p>
function M.ConnectDirectoryResult(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConnectDirectoryResult")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertConnectDirectoryResult(t)
	return t
end

local StartSchemaExtensionResult_keys = { "SchemaExtensionId" = true, nil }

function M.AssertStartSchemaExtensionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSchemaExtensionResult to be of type 'table'")
	if struct["SchemaExtensionId"] then M.AssertSchemaExtensionId(struct["SchemaExtensionId"]) end
	for k,_ in pairs(struct) do
		assert(StartSchemaExtensionResult_keys[k], "StartSchemaExtensionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSchemaExtensionResult
--  
-- @param SchemaExtensionId [SchemaExtensionId] <p>The identifier of the schema extension that will be applied.</p>
function M.StartSchemaExtensionResult(SchemaExtensionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartSchemaExtensionResult")
	local t = { 
		["SchemaExtensionId"] = SchemaExtensionId,
	}
	M.AssertStartSchemaExtensionResult(t)
	return t
end

local EntityDoesNotExistException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertEntityDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityDoesNotExistException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(EntityDoesNotExistException_keys[k], "EntityDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityDoesNotExistException
-- <p>The specified entity could not be found.</p>
-- @param Message [ExceptionMessage] <p>The specified entity could not be found.</p>
-- @param RequestId [RequestId] <p>The specified entity could not be found.</p>
function M.EntityDoesNotExistException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityDoesNotExistException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertEntityDoesNotExistException(t)
	return t
end

local RadiusSettings_keys = { "DisplayLabel" = true, "UseSameUsername" = true, "RadiusTimeout" = true, "AuthenticationProtocol" = true, "RadiusPort" = true, "RadiusRetries" = true, "RadiusServers" = true, "SharedSecret" = true, nil }

function M.AssertRadiusSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RadiusSettings to be of type 'table'")
	if struct["DisplayLabel"] then M.AssertRadiusDisplayLabel(struct["DisplayLabel"]) end
	if struct["UseSameUsername"] then M.AssertUseSameUsername(struct["UseSameUsername"]) end
	if struct["RadiusTimeout"] then M.AssertRadiusTimeout(struct["RadiusTimeout"]) end
	if struct["AuthenticationProtocol"] then M.AssertRadiusAuthenticationProtocol(struct["AuthenticationProtocol"]) end
	if struct["RadiusPort"] then M.AssertPortNumber(struct["RadiusPort"]) end
	if struct["RadiusRetries"] then M.AssertRadiusRetries(struct["RadiusRetries"]) end
	if struct["RadiusServers"] then M.AssertServers(struct["RadiusServers"]) end
	if struct["SharedSecret"] then M.AssertRadiusSharedSecret(struct["SharedSecret"]) end
	for k,_ in pairs(struct) do
		assert(RadiusSettings_keys[k], "RadiusSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RadiusSettings
-- <p>Contains information about a Remote Authentication Dial In User Service (RADIUS) server.</p>
-- @param DisplayLabel [RadiusDisplayLabel] <p>Not currently used.</p>
-- @param UseSameUsername [UseSameUsername] <p>Not currently used.</p>
-- @param RadiusTimeout [RadiusTimeout] <p>The amount of time, in seconds, to wait for the RADIUS server to respond.</p>
-- @param AuthenticationProtocol [RadiusAuthenticationProtocol] <p>The protocol specified for your RADIUS endpoints.</p>
-- @param RadiusPort [PortNumber] <p>The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.</p>
-- @param RadiusRetries [RadiusRetries] <p>The maximum number of times that communication with the RADIUS server is attempted.</p>
-- @param RadiusServers [Servers] <p>An array of strings that contains the IP addresses of the RADIUS server endpoints, or the IP addresses of your RADIUS server load balancer.</p>
-- @param SharedSecret [RadiusSharedSecret] <p>Not currently used.</p>
function M.RadiusSettings(DisplayLabel, UseSameUsername, RadiusTimeout, AuthenticationProtocol, RadiusPort, RadiusRetries, RadiusServers, SharedSecret, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RadiusSettings")
	local t = { 
		["DisplayLabel"] = DisplayLabel,
		["UseSameUsername"] = UseSameUsername,
		["RadiusTimeout"] = RadiusTimeout,
		["AuthenticationProtocol"] = AuthenticationProtocol,
		["RadiusPort"] = RadiusPort,
		["RadiusRetries"] = RadiusRetries,
		["RadiusServers"] = RadiusServers,
		["SharedSecret"] = SharedSecret,
	}
	M.AssertRadiusSettings(t)
	return t
end

local CreateComputerResult_keys = { "Computer" = true, nil }

function M.AssertCreateComputerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputerResult to be of type 'table'")
	if struct["Computer"] then M.AssertComputer(struct["Computer"]) end
	for k,_ in pairs(struct) do
		assert(CreateComputerResult_keys[k], "CreateComputerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputerResult
-- <p>Contains the results for the <a>CreateComputer</a> operation.</p>
-- @param Computer [Computer] <p>A <a>Computer</a> object that represents the computer account.</p>
function M.CreateComputerResult(Computer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateComputerResult")
	local t = { 
		["Computer"] = Computer,
	}
	M.AssertCreateComputerResult(t)
	return t
end

local EnableSsoRequest_keys = { "UserName" = true, "DirectoryId" = true, "Password" = true, nil }

function M.AssertEnableSsoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSsoRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["UserName"] then M.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Password"] then M.AssertConnectPassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(EnableSsoRequest_keys[k], "EnableSsoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSsoRequest
-- <p>Contains the inputs for the <a>EnableSso</a> operation.</p>
-- @param UserName [UserName] <p>The username of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. This account must have privileges to add a service principal name.</p> <p>If the AD Connector service account does not have privileges to add a service principal name, you can specify an alternate account with the <i>UserName</i> and <i>Password</i> parameters. These credentials are only used to enable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which to enable single-sign on.</p>
-- @param Password [ConnectPassword] <p>The password of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. For more information, see the <i>UserName</i> parameter.</p>
-- Required parameter: DirectoryId
function M.EnableSsoRequest(UserName, DirectoryId, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableSsoRequest")
	local t = { 
		["UserName"] = UserName,
		["DirectoryId"] = DirectoryId,
		["Password"] = Password,
	}
	M.AssertEnableSsoRequest(t)
	return t
end

local EnableRadiusResult_keys = { nil }

function M.AssertEnableRadiusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableRadiusResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EnableRadiusResult_keys[k], "EnableRadiusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableRadiusResult
-- <p>Contains the results of the <a>EnableRadius</a> operation.</p>
function M.EnableRadiusResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableRadiusResult")
	local t = { 
	}
	M.AssertEnableRadiusResult(t)
	return t
end

local EventTopic_keys = { "CreatedDateTime" = true, "DirectoryId" = true, "TopicName" = true, "TopicArn" = true, "Status" = true, nil }

function M.AssertEventTopic(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTopic to be of type 'table'")
	if struct["CreatedDateTime"] then M.AssertCreatedDateTime(struct["CreatedDateTime"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicName"] then M.AssertTopicName(struct["TopicName"]) end
	if struct["TopicArn"] then M.AssertTopicArn(struct["TopicArn"]) end
	if struct["Status"] then M.AssertTopicStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(EventTopic_keys[k], "EventTopic contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTopic
-- <p>Information about SNS topic and AWS Directory Service directory associations.</p>
-- @param CreatedDateTime [CreatedDateTime] <p>The date and time of when you associated your directory with the SNS topic.</p>
-- @param DirectoryId [DirectoryId] <p>The Directory ID of an AWS Directory Service directory that will publish status messages to an SNS topic.</p>
-- @param TopicName [TopicName] <p>The name of an AWS SNS topic the receives status messages from the directory.</p>
-- @param TopicArn [TopicArn] <p>The SNS topic ARN (Amazon Resource Name).</p>
-- @param Status [TopicStatus] <p>The topic registration status.</p>
function M.EventTopic(CreatedDateTime, DirectoryId, TopicName, TopicArn, Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventTopic")
	local t = { 
		["CreatedDateTime"] = CreatedDateTime,
		["DirectoryId"] = DirectoryId,
		["TopicName"] = TopicName,
		["TopicArn"] = TopicArn,
		["Status"] = Status,
	}
	M.AssertEventTopic(t)
	return t
end

local DeleteDirectoryRequest_keys = { "DirectoryId" = true, nil }

function M.AssertDeleteDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDirectoryRequest_keys[k], "DeleteDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryRequest
-- <p>Contains the inputs for the <a>DeleteDirectory</a> operation.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory to delete.</p>
-- Required parameter: DirectoryId
function M.DeleteDirectoryRequest(DirectoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDirectoryRequest")
	local t = { 
		["DirectoryId"] = DirectoryId,
	}
	M.AssertDeleteDirectoryRequest(t)
	return t
end

local IpRouteInfo_keys = { "DirectoryId" = true, "IpRouteStatusReason" = true, "Description" = true, "AddedDateTime" = true, "CidrIp" = true, "IpRouteStatusMsg" = true, nil }

function M.AssertIpRouteInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRouteInfo to be of type 'table'")
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["IpRouteStatusReason"] then M.AssertIpRouteStatusReason(struct["IpRouteStatusReason"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["AddedDateTime"] then M.AssertAddedDateTime(struct["AddedDateTime"]) end
	if struct["CidrIp"] then M.AssertCidrIp(struct["CidrIp"]) end
	if struct["IpRouteStatusMsg"] then M.AssertIpRouteStatusMsg(struct["IpRouteStatusMsg"]) end
	for k,_ in pairs(struct) do
		assert(IpRouteInfo_keys[k], "IpRouteInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRouteInfo
-- <p>Information about one or more IP address blocks.</p>
-- @param DirectoryId [DirectoryId] <p>Identifier (ID) of the directory associated with the IP addresses.</p>
-- @param IpRouteStatusReason [IpRouteStatusReason] <p>The reason for the IpRouteStatusMsg.</p>
-- @param Description [Description] <p>Description of the <a>IpRouteInfo</a>.</p>
-- @param AddedDateTime [AddedDateTime] <p>The date and time the address block was added to the directory.</p>
-- @param CidrIp [CidrIp] <p>IP address block in the <a>IpRoute</a>.</p>
-- @param IpRouteStatusMsg [IpRouteStatusMsg] <p>The status of the IP address block.</p>
function M.IpRouteInfo(DirectoryId, IpRouteStatusReason, Description, AddedDateTime, CidrIp, IpRouteStatusMsg, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IpRouteInfo")
	local t = { 
		["DirectoryId"] = DirectoryId,
		["IpRouteStatusReason"] = IpRouteStatusReason,
		["Description"] = Description,
		["AddedDateTime"] = AddedDateTime,
		["CidrIp"] = CidrIp,
		["IpRouteStatusMsg"] = IpRouteStatusMsg,
	}
	M.AssertIpRouteInfo(t)
	return t
end

local GetDirectoryLimitsResult_keys = { "DirectoryLimits" = true, nil }

function M.AssertGetDirectoryLimitsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryLimitsResult to be of type 'table'")
	if struct["DirectoryLimits"] then M.AssertDirectoryLimits(struct["DirectoryLimits"]) end
	for k,_ in pairs(struct) do
		assert(GetDirectoryLimitsResult_keys[k], "GetDirectoryLimitsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryLimitsResult
-- <p>Contains the results of the <a>GetDirectoryLimits</a> operation.</p>
-- @param DirectoryLimits [DirectoryLimits] <p>A <a>DirectoryLimits</a> object that contains the directory limits for the current region.</p>
function M.GetDirectoryLimitsResult(DirectoryLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDirectoryLimitsResult")
	local t = { 
		["DirectoryLimits"] = DirectoryLimits,
	}
	M.AssertGetDirectoryLimitsResult(t)
	return t
end

local SnapshotLimitExceededException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertSnapshotLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotLimitExceededException_keys[k], "SnapshotLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotLimitExceededException
-- <p>The maximum number of manual snapshots for the directory has been reached. You can use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits for a directory.</p>
-- @param Message [ExceptionMessage] <p>The maximum number of manual snapshots for the directory has been reached. You can use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits for a directory.</p>
-- @param RequestId [RequestId] <p>The maximum number of manual snapshots for the directory has been reached. You can use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits for a directory.</p>
function M.SnapshotLimitExceededException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotLimitExceededException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertSnapshotLimitExceededException(t)
	return t
end

local SnapshotLimits_keys = { "ManualSnapshotsCurrentCount" = true, "ManualSnapshotsLimit" = true, "ManualSnapshotsLimitReached" = true, nil }

function M.AssertSnapshotLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotLimits to be of type 'table'")
	if struct["ManualSnapshotsCurrentCount"] then M.AssertLimit(struct["ManualSnapshotsCurrentCount"]) end
	if struct["ManualSnapshotsLimit"] then M.AssertLimit(struct["ManualSnapshotsLimit"]) end
	if struct["ManualSnapshotsLimitReached"] then M.AssertManualSnapshotsLimitReached(struct["ManualSnapshotsLimitReached"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotLimits_keys[k], "SnapshotLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotLimits
-- <p>Contains manual snapshot limit information for a directory.</p>
-- @param ManualSnapshotsCurrentCount [Limit] <p>The current number of manual snapshots of the directory.</p>
-- @param ManualSnapshotsLimit [Limit] <p>The maximum number of manual snapshots allowed.</p>
-- @param ManualSnapshotsLimitReached [ManualSnapshotsLimitReached] <p>Indicates if the manual snapshot limit has been reached.</p>
function M.SnapshotLimits(ManualSnapshotsCurrentCount, ManualSnapshotsLimit, ManualSnapshotsLimitReached, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotLimits")
	local t = { 
		["ManualSnapshotsCurrentCount"] = ManualSnapshotsCurrentCount,
		["ManualSnapshotsLimit"] = ManualSnapshotsLimit,
		["ManualSnapshotsLimitReached"] = ManualSnapshotsLimitReached,
	}
	M.AssertSnapshotLimits(t)
	return t
end

local IpRoute_keys = { "Description" = true, "CidrIp" = true, nil }

function M.AssertIpRoute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRoute to be of type 'table'")
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["CidrIp"] then M.AssertCidrIp(struct["CidrIp"]) end
	for k,_ in pairs(struct) do
		assert(IpRoute_keys[k], "IpRoute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRoute
-- <p>IP address block. This is often the address block of the DNS server used for your on-premises domain. </p>
-- @param Description [Description] <p>Description of the address block.</p>
-- @param CidrIp [CidrIp] <p>IP address block using CIDR format, for example 10.0.0.0/24. This is often the address block of the DNS server used for your on-premises domain. For a single IP address use a CIDR address block with /32. For example 10.0.0.0/32.</p>
function M.IpRoute(Description, CidrIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IpRoute")
	local t = { 
		["Description"] = Description,
		["CidrIp"] = CidrIp,
	}
	M.AssertIpRoute(t)
	return t
end

local DirectoryLimits_keys = { "CloudOnlyMicrosoftADCurrentCount" = true, "ConnectedDirectoriesLimitReached" = true, "ConnectedDirectoriesLimit" = true, "CloudOnlyDirectoriesLimit" = true, "CloudOnlyMicrosoftADLimit" = true, "ConnectedDirectoriesCurrentCount" = true, "CloudOnlyMicrosoftADLimitReached" = true, "CloudOnlyDirectoriesCurrentCount" = true, "CloudOnlyDirectoriesLimitReached" = true, nil }

function M.AssertDirectoryLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryLimits to be of type 'table'")
	if struct["CloudOnlyMicrosoftADCurrentCount"] then M.AssertLimit(struct["CloudOnlyMicrosoftADCurrentCount"]) end
	if struct["ConnectedDirectoriesLimitReached"] then M.AssertConnectedDirectoriesLimitReached(struct["ConnectedDirectoriesLimitReached"]) end
	if struct["ConnectedDirectoriesLimit"] then M.AssertLimit(struct["ConnectedDirectoriesLimit"]) end
	if struct["CloudOnlyDirectoriesLimit"] then M.AssertLimit(struct["CloudOnlyDirectoriesLimit"]) end
	if struct["CloudOnlyMicrosoftADLimit"] then M.AssertLimit(struct["CloudOnlyMicrosoftADLimit"]) end
	if struct["ConnectedDirectoriesCurrentCount"] then M.AssertLimit(struct["ConnectedDirectoriesCurrentCount"]) end
	if struct["CloudOnlyMicrosoftADLimitReached"] then M.AssertCloudOnlyDirectoriesLimitReached(struct["CloudOnlyMicrosoftADLimitReached"]) end
	if struct["CloudOnlyDirectoriesCurrentCount"] then M.AssertLimit(struct["CloudOnlyDirectoriesCurrentCount"]) end
	if struct["CloudOnlyDirectoriesLimitReached"] then M.AssertCloudOnlyDirectoriesLimitReached(struct["CloudOnlyDirectoriesLimitReached"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryLimits_keys[k], "DirectoryLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryLimits
-- <p>Contains directory limit information for a region.</p>
-- @param CloudOnlyMicrosoftADCurrentCount [Limit] <p>The current number of Microsoft AD directories in the region.</p>
-- @param ConnectedDirectoriesLimitReached [ConnectedDirectoriesLimitReached] <p>Indicates if the connected directory limit has been reached.</p>
-- @param ConnectedDirectoriesLimit [Limit] <p>The maximum number of connected directories allowed in the region.</p>
-- @param CloudOnlyDirectoriesLimit [Limit] <p>The maximum number of cloud directories allowed in the region.</p>
-- @param CloudOnlyMicrosoftADLimit [Limit] <p>The maximum number of Microsoft AD directories allowed in the region.</p>
-- @param ConnectedDirectoriesCurrentCount [Limit] <p>The current number of connected directories in the region.</p>
-- @param CloudOnlyMicrosoftADLimitReached [CloudOnlyDirectoriesLimitReached] <p>Indicates if the Microsoft AD directory limit has been reached.</p>
-- @param CloudOnlyDirectoriesCurrentCount [Limit] <p>The current number of cloud directories in the region.</p>
-- @param CloudOnlyDirectoriesLimitReached [CloudOnlyDirectoriesLimitReached] <p>Indicates if the cloud directory limit has been reached.</p>
function M.DirectoryLimits(CloudOnlyMicrosoftADCurrentCount, ConnectedDirectoriesLimitReached, ConnectedDirectoriesLimit, CloudOnlyDirectoriesLimit, CloudOnlyMicrosoftADLimit, ConnectedDirectoriesCurrentCount, CloudOnlyMicrosoftADLimitReached, CloudOnlyDirectoriesCurrentCount, CloudOnlyDirectoriesLimitReached, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryLimits")
	local t = { 
		["CloudOnlyMicrosoftADCurrentCount"] = CloudOnlyMicrosoftADCurrentCount,
		["ConnectedDirectoriesLimitReached"] = ConnectedDirectoriesLimitReached,
		["ConnectedDirectoriesLimit"] = ConnectedDirectoriesLimit,
		["CloudOnlyDirectoriesLimit"] = CloudOnlyDirectoriesLimit,
		["CloudOnlyMicrosoftADLimit"] = CloudOnlyMicrosoftADLimit,
		["ConnectedDirectoriesCurrentCount"] = ConnectedDirectoriesCurrentCount,
		["CloudOnlyMicrosoftADLimitReached"] = CloudOnlyMicrosoftADLimitReached,
		["CloudOnlyDirectoriesCurrentCount"] = CloudOnlyDirectoriesCurrentCount,
		["CloudOnlyDirectoriesLimitReached"] = CloudOnlyDirectoriesLimitReached,
	}
	M.AssertDirectoryLimits(t)
	return t
end

local DeleteTrustResult_keys = { "TrustId" = true, nil }

function M.AssertDeleteTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrustResult to be of type 'table'")
	if struct["TrustId"] then M.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTrustResult_keys[k], "DeleteTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrustResult
-- <p>The result of a DeleteTrust request.</p>
-- @param TrustId [TrustId] <p>The Trust ID of the trust relationship that was deleted.</p>
function M.DeleteTrustResult(TrustId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrustResult")
	local t = { 
		["TrustId"] = TrustId,
	}
	M.AssertDeleteTrustResult(t)
	return t
end

local UpdateConditionalForwarderResult_keys = { nil }

function M.AssertUpdateConditionalForwarderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConditionalForwarderResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateConditionalForwarderResult_keys[k], "UpdateConditionalForwarderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConditionalForwarderResult
-- <p>The result of an UpdateConditionalForwarder request.</p>
function M.UpdateConditionalForwarderResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConditionalForwarderResult")
	local t = { 
	}
	M.AssertUpdateConditionalForwarderResult(t)
	return t
end

local DisableRadiusResult_keys = { nil }

function M.AssertDisableRadiusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableRadiusResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisableRadiusResult_keys[k], "DisableRadiusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableRadiusResult
-- <p>Contains the results of the <a>DisableRadius</a> operation.</p>
function M.DisableRadiusResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableRadiusResult")
	local t = { 
	}
	M.AssertDisableRadiusResult(t)
	return t
end

local StartSchemaExtensionRequest_keys = { "CreateSnapshotBeforeSchemaExtension" = true, "DirectoryId" = true, "LdifContent" = true, "Description" = true, nil }

function M.AssertStartSchemaExtensionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSchemaExtensionRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["CreateSnapshotBeforeSchemaExtension"], "Expected key CreateSnapshotBeforeSchemaExtension to exist in table")
	assert(struct["LdifContent"], "Expected key LdifContent to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["CreateSnapshotBeforeSchemaExtension"] then M.AssertCreateSnapshotBeforeSchemaExtension(struct["CreateSnapshotBeforeSchemaExtension"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["LdifContent"] then M.AssertLdifContent(struct["LdifContent"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(StartSchemaExtensionRequest_keys[k], "StartSchemaExtensionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSchemaExtensionRequest
--  
-- @param CreateSnapshotBeforeSchemaExtension [CreateSnapshotBeforeSchemaExtension] <p>If true, creates a snapshot of the directory before applying the schema extension.</p>
-- @param DirectoryId [DirectoryId] <p>The identifier of the directory for which the schema extension will be applied to.</p>
-- @param LdifContent [LdifContent] <p>The LDIF file represented as a string. To construct the LdifContent string, precede each line as it would be formatted in an ldif file with \n. See the example request below for more details. The file size can be no larger than 1MB.</p>
-- @param Description [Description] <p>A description of the schema extension.</p>
-- Required parameter: DirectoryId
-- Required parameter: CreateSnapshotBeforeSchemaExtension
-- Required parameter: LdifContent
-- Required parameter: Description
function M.StartSchemaExtensionRequest(CreateSnapshotBeforeSchemaExtension, DirectoryId, LdifContent, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartSchemaExtensionRequest")
	local t = { 
		["CreateSnapshotBeforeSchemaExtension"] = CreateSnapshotBeforeSchemaExtension,
		["DirectoryId"] = DirectoryId,
		["LdifContent"] = LdifContent,
		["Description"] = Description,
	}
	M.AssertStartSchemaExtensionRequest(t)
	return t
end

local EntityAlreadyExistsException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertEntityAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(EntityAlreadyExistsException_keys[k], "EntityAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyExistsException
-- <p>The specified entity already exists.</p>
-- @param Message [ExceptionMessage] <p>The specified entity already exists.</p>
-- @param RequestId [RequestId] <p>The specified entity already exists.</p>
function M.EntityAlreadyExistsException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAlreadyExistsException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertEntityAlreadyExistsException(t)
	return t
end

local RestoreFromSnapshotResult_keys = { nil }

function M.AssertRestoreFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromSnapshotResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RestoreFromSnapshotResult_keys[k], "RestoreFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromSnapshotResult
-- <p>Contains the results of the <a>RestoreFromSnapshot</a> operation.</p>
function M.RestoreFromSnapshotResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreFromSnapshotResult")
	local t = { 
	}
	M.AssertRestoreFromSnapshotResult(t)
	return t
end

local TagLimitExceededException_keys = { "Message" = true, "RequestId" = true, nil }

function M.AssertTagLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then M.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(TagLimitExceededException_keys[k], "TagLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededException
-- <p>The maximum allowed number of tags was exceeded.</p>
-- @param Message [ExceptionMessage] <p>The maximum allowed number of tags was exceeded.</p>
-- @param RequestId [RequestId] <p>The maximum allowed number of tags was exceeded.</p>
function M.TagLimitExceededException(Message, RequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededException")
	local t = { 
		["Message"] = Message,
		["RequestId"] = RequestId,
	}
	M.AssertTagLimitExceededException(t)
	return t
end

function M.AssertIpRouteStatusMsg(str)
	assert(str)
	assert(type(str) == "string", "Expected IpRouteStatusMsg to be of type 'string'")
end

--  
function M.IpRouteStatusMsg(str)
	M.AssertIpRouteStatusMsg(str)
	return str
end

function M.AssertRadiusStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusStatus to be of type 'string'")
end

--  
function M.RadiusStatus(str)
	M.AssertRadiusStatus(str)
	return str
end

function M.AssertTrustPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustPassword to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrustPassword(str)
	M.AssertTrustPassword(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertSchemaExtensionId(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaExtensionId to be of type 'string'")
	assert(str:match("^e-[0-9a-f]{10}$"), "Expected string to match pattern '^e-[0-9a-f]{10}$'")
end

--  
function M.SchemaExtensionId(str)
	M.AssertSchemaExtensionId(str)
	return str
end

function M.AssertTrustId(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustId to be of type 'string'")
	assert(str:match("^t-[0-9a-f]{10}$"), "Expected string to match pattern '^t-[0-9a-f]{10}$'")
end

--  
function M.TrustId(str)
	M.AssertTrustId(str)
	return str
end

function M.AssertRadiusSharedSecret(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusSharedSecret to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

--  
function M.RadiusSharedSecret(str)
	M.AssertRadiusSharedSecret(str)
	return str
end

function M.AssertLdifContent(str)
	assert(str)
	assert(type(str) == "string", "Expected LdifContent to be of type 'string'")
	assert(#str <= 500000, "Expected string to be max 500000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LdifContent(str)
	M.AssertLdifContent(str)
	return str
end

function M.AssertSchemaExtensionStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaExtensionStatusReason to be of type 'string'")
end

--  
function M.SchemaExtensionStatusReason(str)
	M.AssertSchemaExtensionStatusReason(str)
	return str
end

function M.AssertDirectoryStage(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryStage to be of type 'string'")
end

--  
function M.DirectoryStage(str)
	M.AssertDirectoryStage(str)
	return str
end

function M.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	M.AssertAttributeValue(str)
	return str
end

function M.AssertConnectPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectPassword to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConnectPassword(str)
	M.AssertConnectPassword(str)
	return str
end

function M.AssertIpAddr(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddr to be of type 'string'")
	assert(str:match("^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)%.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"), "Expected string to match pattern '^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)%.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$'")
end

--  
function M.IpAddr(str)
	M.AssertIpAddr(str)
	return str
end

function M.AssertDirectorySize(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectorySize to be of type 'string'")
end

--  
function M.DirectorySize(str)
	M.AssertDirectorySize(str)
	return str
end

function M.AssertDirectoryType(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryType to be of type 'string'")
end

--  
function M.DirectoryType(str)
	M.AssertDirectoryType(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertReplicationScope(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationScope to be of type 'string'")
end

--  
function M.ReplicationScope(str)
	M.AssertReplicationScope(str)
	return str
end

function M.AssertAliasName(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasName to be of type 'string'")
	assert(#str <= 62, "Expected string to be max 62 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^(?!d-)([%da-zA-Z]+)([-]*[%da-zA-Z])*"), "Expected string to match pattern '^(?!d-)([%da-zA-Z]+)([-]*[%da-zA-Z])*'")
end

--  
function M.AliasName(str)
	M.AssertAliasName(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
	assert(str:match("^(subnet-[0-9a-f]{8})$"), "Expected string to match pattern '^(subnet-[0-9a-f]{8})$'")
end

--  
function M.SubnetId(str)
	M.AssertSubnetId(str)
	return str
end

function M.AssertAccessUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessUrl to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccessUrl(str)
	M.AssertAccessUrl(str)
	return str
end

function M.AssertTopicName(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_-]+"), "Expected string to match pattern '[a-zA-Z0-9_-]+'")
end

--  
function M.TopicName(str)
	M.AssertTopicName(str)
	return str
end

function M.AssertSchemaExtensionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaExtensionStatus to be of type 'string'")
end

--  
function M.SchemaExtensionStatus(str)
	M.AssertSchemaExtensionStatus(str)
	return str
end

function M.AssertSnapshotName(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(str:match("^([a-zA-Z0-9_])[%%a-zA-Z0-9_@#%*+=:?./!%s-]*$"), "Expected string to match pattern '^([a-zA-Z0-9_])[%%a-zA-Z0-9_@#%*+=:?./!%s-]*$'")
end

--  
function M.SnapshotName(str)
	M.AssertSnapshotName(str)
	return str
end

function M.AssertServer(str)
	assert(str)
	assert(type(str) == "string", "Expected Server to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Server(str)
	M.AssertServer(str)
	return str
end

function M.AssertSnapshotStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotStatus to be of type 'string'")
end

--  
function M.SnapshotStatus(str)
	M.AssertSnapshotStatus(str)
	return str
end

function M.AssertTopicStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicStatus to be of type 'string'")
end

--  
function M.TopicStatus(str)
	M.AssertTopicStatus(str)
	return str
end

function M.AssertAvailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailabilityZone to be of type 'string'")
end

--  
function M.AvailabilityZone(str)
	M.AssertAvailabilityZone(str)
	return str
end

function M.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
	assert(str:match("^([a-zA-Z0-9]+[%%.-])+([a-zA-Z0-9])+$"), "Expected string to match pattern '^([a-zA-Z0-9]+[%%.-])+([a-zA-Z0-9])+$'")
end

--  
function M.DirectoryName(str)
	M.AssertDirectoryName(str)
	return str
end

function M.AssertUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9._-]+"), "Expected string to match pattern '[a-zA-Z0-9._-]+'")
end

--  
function M.UserName(str)
	M.AssertUserName(str)
	return str
end

function M.AssertDirectoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryId to be of type 'string'")
	assert(str:match("^d-[0-9a-f]{10}$"), "Expected string to match pattern '^d-[0-9a-f]{10}$'")
end

--  
function M.DirectoryId(str)
	M.AssertDirectoryId(str)
	return str
end

function M.AssertComputerPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerPassword to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
	assert(str:match("[%u0020-%u00FF]+"), "Expected string to match pattern '[%u0020-%u00FF]+'")
end

--  
function M.ComputerPassword(str)
	M.AssertComputerPassword(str)
	return str
end

function M.AssertRadiusAuthenticationProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusAuthenticationProtocol to be of type 'string'")
end

--  
function M.RadiusAuthenticationProtocol(str)
	M.AssertRadiusAuthenticationProtocol(str)
	return str
end

function M.AssertSID(str)
	assert(str)
	assert(type(str) == "string", "Expected SID to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[&%w+-.@]+"), "Expected string to match pattern '[&%w+-.@]+'")
end

--  
function M.SID(str)
	M.AssertSID(str)
	return str
end

function M.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
	assert(str:match("^s-[0-9a-f]{10}$"), "Expected string to match pattern '^s-[0-9a-f]{10}$'")
end

--  
function M.SnapshotId(str)
	M.AssertSnapshotId(str)
	return str
end

function M.AssertTrustState(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustState to be of type 'string'")
end

--  
function M.TrustState(str)
	M.AssertTrustState(str)
	return str
end

function M.AssertComputerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerName to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ComputerName(str)
	M.AssertComputerName(str)
	return str
end

function M.AssertStageReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StageReason to be of type 'string'")
end

--  
function M.StageReason(str)
	M.AssertStageReason(str)
	return str
end

function M.AssertRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestId to be of type 'string'")
	assert(str:match("^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$"), "Expected string to match pattern '^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$'")
end

-- <p>The AWS request identifier.</p>
function M.RequestId(str)
	M.AssertRequestId(str)
	return str
end

function M.AssertRadiusDisplayLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusDisplayLabel to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RadiusDisplayLabel(str)
	M.AssertRadiusDisplayLabel(str)
	return str
end

function M.AssertDirectoryShortName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryShortName to be of type 'string'")
	assert(str:match("^[^%%/:*?%"%<%>|.]+[^%%/:*?%"<>|]*$"), "Expected string to match pattern '^[^%%/:*?%"%<%>|.]+[^%%/:*?%"<>|]*$'")
end

--  
function M.DirectoryShortName(str)
	M.AssertDirectoryShortName(str)
	return str
end

function M.AssertTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicArn to be of type 'string'")
end

--  
function M.TopicArn(str)
	M.AssertTopicArn(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

-- <p>The descriptive message for the exception.</p>
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertTrustType(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustType to be of type 'string'")
end

--  
function M.TrustType(str)
	M.AssertTrustType(str)
	return str
end

function M.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
	assert(str:match("^(sg-[0-9a-f]{8})$"), "Expected string to match pattern '^(sg-[0-9a-f]{8})$'")
end

--  
function M.SecurityGroupId(str)
	M.AssertSecurityGroupId(str)
	return str
end

function M.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
	assert(str:match("(?=^.{8,64}$)((?=.*%d)(?=.*[A-Z])(?=.*[a-z])|(?=.*%d)(?=.*[^A-Za-z0-9%s])(?=.*[a-z])|(?=.*[^A-Za-z0-9%s])(?=.*[A-Z])(?=.*[a-z])|(?=.*%d)(?=.*[A-Z])(?=.*[^A-Za-z0-9%s]))^.*"), "Expected string to match pattern '(?=^.{8,64}$)((?=.*%d)(?=.*[A-Z])(?=.*[a-z])|(?=.*%d)(?=.*[^A-Za-z0-9%s])(?=.*[a-z])|(?=.*[^A-Za-z0-9%s])(?=.*[A-Z])(?=.*[a-z])|(?=.*%d)(?=.*[A-Z])(?=.*[^A-Za-z0-9%s]))^.*'")
end

--  
function M.Password(str)
	M.AssertPassword(str)
	return str
end

function M.AssertTrustDirection(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustDirection to be of type 'string'")
end

--  
function M.TrustDirection(str)
	M.AssertTrustDirection(str)
	return str
end

function M.AssertIpRouteStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected IpRouteStatusReason to be of type 'string'")
end

--  
function M.IpRouteStatusReason(str)
	M.AssertIpRouteStatusReason(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(str:match("^([a-zA-Z0-9_])[%%a-zA-Z0-9_@#%*+=:?./!%s-]*$"), "Expected string to match pattern '^([a-zA-Z0-9_])[%%a-zA-Z0-9_@#%*+=:?./!%s-]*$'")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(str:match("^[d]-[0-9a-f]{10}$"), "Expected string to match pattern '^[d]-[0-9a-f]{10}$'")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertRemoteDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected RemoteDomainName to be of type 'string'")
	assert(str:match("^([a-zA-Z0-9]+[%%.-])+([a-zA-Z0-9])+[.]?$"), "Expected string to match pattern '^([a-zA-Z0-9]+[%%.-])+([a-zA-Z0-9])+[.]?$'")
end

--  
function M.RemoteDomainName(str)
	M.AssertRemoteDomainName(str)
	return str
end

function M.AssertSnapshotType(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotType to be of type 'string'")
end

--  
function M.SnapshotType(str)
	M.AssertSnapshotType(str)
	return str
end

function M.AssertOrganizationalUnitDN(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitDN to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OrganizationalUnitDN(str)
	M.AssertOrganizationalUnitDN(str)
	return str
end

function M.AssertCidrIp(str)
	assert(str)
	assert(type(str) == "string", "Expected CidrIp to be of type 'string'")
	assert(str:match("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])%.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(%/([1-9]|[1-2][0-9]|3[0-2]))$"), "Expected string to match pattern '^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])%.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(%/([1-9]|[1-2][0-9]|3[0-2]))$'")
end

--  
function M.CidrIp(str)
	M.AssertCidrIp(str)
	return str
end

function M.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
	assert(str:match("^(vpc-[0-9a-f]{8})$"), "Expected string to match pattern '^(vpc-[0-9a-f]{8})$'")
end

--  
function M.VpcId(str)
	M.AssertVpcId(str)
	return str
end

function M.AssertTrustStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustStateReason to be of type 'string'")
end

--  
function M.TrustStateReason(str)
	M.AssertTrustStateReason(str)
	return str
end

function M.AssertRadiusRetries(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RadiusRetries to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
end

function M.RadiusRetries(integer)
	M.AssertRadiusRetries(integer)
	return integer
end

function M.AssertPortNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PortNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1025, "Expected integer to be min 1025")
end

function M.PortNumber(integer)
	M.AssertPortNumber(integer)
	return integer
end

function M.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Limit(integer)
	M.AssertLimit(integer)
	return integer
end

function M.AssertRadiusTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RadiusTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RadiusTimeout(integer)
	M.AssertRadiusTimeout(integer)
	return integer
end

function M.AssertUseSameUsername(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UseSameUsername to be of type 'boolean'")
end

function M.UseSameUsername(boolean)
	M.AssertUseSameUsername(boolean)
	return boolean
end

function M.AssertCloudOnlyDirectoriesLimitReached(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CloudOnlyDirectoriesLimitReached to be of type 'boolean'")
end

function M.CloudOnlyDirectoriesLimitReached(boolean)
	M.AssertCloudOnlyDirectoriesLimitReached(boolean)
	return boolean
end

function M.AssertSsoEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SsoEnabled to be of type 'boolean'")
end

function M.SsoEnabled(boolean)
	M.AssertSsoEnabled(boolean)
	return boolean
end

function M.AssertUpdateSecurityGroupForDirectoryControllers(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UpdateSecurityGroupForDirectoryControllers to be of type 'boolean'")
end

function M.UpdateSecurityGroupForDirectoryControllers(boolean)
	M.AssertUpdateSecurityGroupForDirectoryControllers(boolean)
	return boolean
end

function M.AssertDeleteAssociatedConditionalForwarder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteAssociatedConditionalForwarder to be of type 'boolean'")
end

function M.DeleteAssociatedConditionalForwarder(boolean)
	M.AssertDeleteAssociatedConditionalForwarder(boolean)
	return boolean
end

function M.AssertManualSnapshotsLimitReached(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ManualSnapshotsLimitReached to be of type 'boolean'")
end

function M.ManualSnapshotsLimitReached(boolean)
	M.AssertManualSnapshotsLimitReached(boolean)
	return boolean
end

function M.AssertCreateSnapshotBeforeSchemaExtension(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CreateSnapshotBeforeSchemaExtension to be of type 'boolean'")
end

function M.CreateSnapshotBeforeSchemaExtension(boolean)
	M.AssertCreateSnapshotBeforeSchemaExtension(boolean)
	return boolean
end

function M.AssertConnectedDirectoriesLimitReached(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ConnectedDirectoriesLimitReached to be of type 'boolean'")
end

function M.ConnectedDirectoriesLimitReached(boolean)
	M.AssertConnectedDirectoriesLimitReached(boolean)
	return boolean
end

function M.AssertLastUpdatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastUpdatedDateTime to be of type 'string'")
end

function M.LastUpdatedDateTime(timestamp)
	M.AssertLastUpdatedDateTime(timestamp)
	return timestamp
end

function M.AssertAddedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AddedDateTime to be of type 'string'")
end

function M.AddedDateTime(timestamp)
	M.AssertAddedDateTime(timestamp)
	return timestamp
end

function M.AssertStateLastUpdatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StateLastUpdatedDateTime to be of type 'string'")
end

function M.StateLastUpdatedDateTime(timestamp)
	M.AssertStateLastUpdatedDateTime(timestamp)
	return timestamp
end

function M.AssertLaunchTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LaunchTime to be of type 'string'")
end

function M.LaunchTime(timestamp)
	M.AssertLaunchTime(timestamp)
	return timestamp
end

function M.AssertCreatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDateTime to be of type 'string'")
end

function M.CreatedDateTime(timestamp)
	M.AssertCreatedDateTime(timestamp)
	return timestamp
end

function M.AssertStartTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StartTime to be of type 'string'")
end

function M.StartTime(timestamp)
	M.AssertStartTime(timestamp)
	return timestamp
end

function M.AssertEndDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EndDateTime to be of type 'string'")
end

function M.EndDateTime(timestamp)
	M.AssertEndDateTime(timestamp)
	return timestamp
end

function M.AssertStartDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StartDateTime to be of type 'string'")
end

function M.StartDateTime(timestamp)
	M.AssertStartDateTime(timestamp)
	return timestamp
end

function M.AssertEventTopics(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTopics to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventTopic(v)
	end
end

--  
-- List of EventTopic objects
function M.EventTopics(list)
	M.AssertEventTopics(list)
	return list
end

function M.AssertIpRoutesInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected IpRoutesInfo to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIpRouteInfo(v)
	end
end

--  
-- List of IpRouteInfo objects
function M.IpRoutesInfo(list)
	M.AssertIpRoutesInfo(list)
	return list
end

function M.AssertConditionalForwarders(list)
	assert(list)
	assert(type(list) == "table", "Expected ConditionalForwarders to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConditionalForwarder(v)
	end
end

--  
-- List of ConditionalForwarder objects
function M.ConditionalForwarders(list)
	M.AssertConditionalForwarders(list)
	return list
end

function M.AssertAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected Attributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.Attributes(list)
	M.AssertAttributes(list)
	return list
end

function M.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	M.AssertSubnetIds(list)
	return list
end

function M.AssertRemoteDomainNames(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoteDomainNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRemoteDomainName(v)
	end
end

--  
-- List of RemoteDomainName objects
function M.RemoteDomainNames(list)
	M.AssertRemoteDomainNames(list)
	return list
end

function M.AssertSnapshotIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSnapshotId(v)
	end
end

-- <p>A list of directory snapshot identifiers.</p>
-- List of SnapshotId objects
function M.SnapshotIds(list)
	M.AssertSnapshotIds(list)
	return list
end

function M.AssertSnapshots(list)
	assert(list)
	assert(type(list) == "table", "Expected Snapshots to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSnapshot(v)
	end
end

-- <p>A list of descriptions of directory snapshots.</p>
-- List of Snapshot objects
function M.Snapshots(list)
	M.AssertSnapshots(list)
	return list
end

function M.AssertIpAddrs(list)
	assert(list)
	assert(type(list) == "table", "Expected IpAddrs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIpAddr(v)
	end
end

--  
-- List of IpAddr objects
function M.IpAddrs(list)
	M.AssertIpAddrs(list)
	return list
end

function M.AssertDirectoryDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDirectoryDescription(v)
	end
end

-- <p>A list of directory descriptions.</p>
-- List of DirectoryDescription objects
function M.DirectoryDescriptions(list)
	M.AssertDirectoryDescriptions(list)
	return list
end

function M.AssertServers(list)
	assert(list)
	assert(type(list) == "table", "Expected Servers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServer(v)
	end
end

--  
-- List of Server objects
function M.Servers(list)
	M.AssertServers(list)
	return list
end

function M.AssertTrusts(list)
	assert(list)
	assert(type(list) == "table", "Expected Trusts to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrust(v)
	end
end

--  
-- List of Trust objects
function M.Trusts(list)
	M.AssertTrusts(list)
	return list
end

function M.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	M.AssertTags(list)
	return list
end

function M.AssertIpRoutes(list)
	assert(list)
	assert(type(list) == "table", "Expected IpRoutes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIpRoute(v)
	end
end

--  
-- List of IpRoute objects
function M.IpRoutes(list)
	M.AssertIpRoutes(list)
	return list
end

function M.AssertTrustIds(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrustId(v)
	end
end

--  
-- List of TrustId objects
function M.TrustIds(list)
	M.AssertTrustIds(list)
	return list
end

function M.AssertCidrIps(list)
	assert(list)
	assert(type(list) == "table", "Expected CidrIps to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCidrIp(v)
	end
end

--  
-- List of CidrIp objects
function M.CidrIps(list)
	M.AssertCidrIps(list)
	return list
end

function M.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	M.AssertTagKeys(list)
	return list
end

function M.AssertSchemaExtensionsInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaExtensionsInfo to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSchemaExtensionInfo(v)
	end
end

--  
-- List of SchemaExtensionInfo objects
function M.SchemaExtensionsInfo(list)
	M.AssertSchemaExtensionsInfo(list)
	return list
end

function M.AssertTopicNames(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTopicName(v)
	end
end

--  
-- List of TopicName objects
function M.TopicNames(list)
	M.AssertTopicNames(list)
	return list
end

function M.AssertDirectoryIds(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDirectoryId(v)
	end
end

-- <p>A list of directory identifiers.</p>
-- List of DirectoryId objects
function M.DirectoryIds(list)
	M.AssertDirectoryIds(list)
	return list
end

function M.AssertDnsIpAddrs(list)
	assert(list)
	assert(type(list) == "table", "Expected DnsIpAddrs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIpAddr(v)
	end
end

--  
-- List of IpAddr objects
function M.DnsIpAddrs(list)
	M.AssertDnsIpAddrs(list)
	return list
end

function M.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZones(list)
	M.AssertAvailabilityZones(list)
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
			return "ds.amazonaws.com"
		end
	end
	local ss = { "ds" }
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
--- RemoveTagsFromResource
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateComputer
-- @param CreateComputerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateComputerAsync(CreateComputerRequest, cb)
	assert(CreateComputerRequest, "You must provide a CreateComputerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateComputer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateComputerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableRadius
-- @param EnableRadiusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableRadiusAsync(EnableRadiusRequest, cb)
	assert(EnableRadiusRequest, "You must provide a EnableRadiusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.EnableRadius",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableRadiusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConditionalForwarder
-- @param DeleteConditionalForwarderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConditionalForwarderAsync(DeleteConditionalForwarderRequest, cb)
	assert(DeleteConditionalForwarderRequest, "You must provide a DeleteConditionalForwarderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteConditionalForwarder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConditionalForwarderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDirectory
-- @param CreateDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDirectoryAsync(CreateDirectoryRequest, cb)
	assert(CreateDirectoryRequest, "You must provide a CreateDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSnapshots
-- @param DescribeSnapshotsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSnapshotsAsync(DescribeSnapshotsRequest, cb)
	assert(DescribeSnapshotsRequest, "You must provide a DescribeSnapshotsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSnapshotsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- VerifyTrust
-- @param VerifyTrustRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyTrustAsync(VerifyTrustRequest, cb)
	assert(VerifyTrustRequest, "You must provide a VerifyTrustRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.VerifyTrust",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", VerifyTrustRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSnapshot
-- @param DeleteSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSnapshotAsync(DeleteSnapshotRequest, cb)
	assert(DeleteSnapshotRequest, "You must provide a DeleteSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRadius
-- @param UpdateRadiusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRadiusAsync(UpdateRadiusRequest, cb)
	assert(UpdateRadiusRequest, "You must provide a UpdateRadiusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateRadius",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRadiusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableRadius
-- @param DisableRadiusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableRadiusAsync(DisableRadiusRequest, cb)
	assert(DisableRadiusRequest, "You must provide a DisableRadiusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DisableRadius",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableRadiusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToResource
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConditionalForwarders
-- @param DescribeConditionalForwardersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConditionalForwardersAsync(DescribeConditionalForwardersRequest, cb)
	assert(DescribeConditionalForwardersRequest, "You must provide a DescribeConditionalForwardersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeConditionalForwarders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConditionalForwardersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEventTopics
-- @param DescribeEventTopicsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventTopicsAsync(DescribeEventTopicsRequest, cb)
	assert(DescribeEventTopicsRequest, "You must provide a DescribeEventTopicsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeEventTopics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventTopicsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableSso
-- @param EnableSsoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableSsoAsync(EnableSsoRequest, cb)
	assert(EnableSsoRequest, "You must provide a EnableSsoRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.EnableSso",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableSsoRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIpRoutes
-- @param ListIpRoutesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIpRoutesAsync(ListIpRoutesRequest, cb)
	assert(ListIpRoutesRequest, "You must provide a ListIpRoutesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListIpRoutes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIpRoutesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveIpRoutes
-- @param RemoveIpRoutesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveIpRoutesAsync(RemoveIpRoutesRequest, cb)
	assert(RemoveIpRoutesRequest, "You must provide a RemoveIpRoutesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RemoveIpRoutes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveIpRoutesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAlias
-- @param CreateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConnectDirectory
-- @param ConnectDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConnectDirectoryAsync(ConnectDirectoryRequest, cb)
	assert(ConnectDirectoryRequest, "You must provide a ConnectDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ConnectDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConnectDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDirectory
-- @param DeleteDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDirectoryAsync(DeleteDirectoryRequest, cb)
	assert(DeleteDirectoryRequest, "You must provide a DeleteDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddIpRoutes
-- @param AddIpRoutesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddIpRoutesAsync(AddIpRoutesRequest, cb)
	assert(AddIpRoutesRequest, "You must provide a AddIpRoutesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AddIpRoutes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddIpRoutesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelSchemaExtension
-- @param CancelSchemaExtensionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelSchemaExtensionAsync(CancelSchemaExtensionRequest, cb)
	assert(CancelSchemaExtensionRequest, "You must provide a CancelSchemaExtensionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CancelSchemaExtension",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelSchemaExtensionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateConditionalForwarder
-- @param CreateConditionalForwarderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConditionalForwarderAsync(CreateConditionalForwarderRequest, cb)
	assert(CreateConditionalForwarderRequest, "You must provide a CreateConditionalForwarderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateConditionalForwarder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateConditionalForwarderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreFromSnapshot
-- @param RestoreFromSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreFromSnapshotAsync(RestoreFromSnapshotRequest, cb)
	assert(RestoreFromSnapshotRequest, "You must provide a RestoreFromSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RestoreFromSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreFromSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSchemaExtensions
-- @param ListSchemaExtensionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSchemaExtensionsAsync(ListSchemaExtensionsRequest, cb)
	assert(ListSchemaExtensionsRequest, "You must provide a ListSchemaExtensionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListSchemaExtensions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSchemaExtensionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTrusts
-- @param DescribeTrustsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustsAsync(DescribeTrustsRequest, cb)
	assert(DescribeTrustsRequest, "You must provide a DescribeTrustsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeTrusts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterEventTopic
-- @param DeregisterEventTopicRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterEventTopicAsync(DeregisterEventTopicRequest, cb)
	assert(DeregisterEventTopicRequest, "You must provide a DeregisterEventTopicRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeregisterEventTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterEventTopicRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateConditionalForwarder
-- @param UpdateConditionalForwarderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateConditionalForwarderAsync(UpdateConditionalForwarderRequest, cb)
	assert(UpdateConditionalForwarderRequest, "You must provide a UpdateConditionalForwarderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateConditionalForwarder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateConditionalForwarderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTrust
-- @param CreateTrustRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrustAsync(CreateTrustRequest, cb)
	assert(CreateTrustRequest, "You must provide a CreateTrustRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateTrust",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTrustRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDirectoryLimits
-- @param GetDirectoryLimitsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDirectoryLimitsAsync(GetDirectoryLimitsRequest, cb)
	assert(GetDirectoryLimitsRequest, "You must provide a GetDirectoryLimitsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.GetDirectoryLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDirectoryLimitsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateMicrosoftAD
-- @param CreateMicrosoftADRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMicrosoftADAsync(CreateMicrosoftADRequest, cb)
	assert(CreateMicrosoftADRequest, "You must provide a CreateMicrosoftADRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateMicrosoftAD",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateMicrosoftADRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterEventTopic
-- @param RegisterEventTopicRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterEventTopicAsync(RegisterEventTopicRequest, cb)
	assert(RegisterEventTopicRequest, "You must provide a RegisterEventTopicRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RegisterEventTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterEventTopicRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSnapshotLimits
-- @param GetSnapshotLimitsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSnapshotLimitsAsync(GetSnapshotLimitsRequest, cb)
	assert(GetSnapshotLimitsRequest, "You must provide a GetSnapshotLimitsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.GetSnapshotLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSnapshotLimitsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTrust
-- @param DeleteTrustRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrustAsync(DeleteTrustRequest, cb)
	assert(DeleteTrustRequest, "You must provide a DeleteTrustRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteTrust",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTrustRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDirectories
-- @param DescribeDirectoriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDirectoriesAsync(DescribeDirectoriesRequest, cb)
	assert(DescribeDirectoriesRequest, "You must provide a DescribeDirectoriesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeDirectories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDirectoriesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartSchemaExtension
-- @param StartSchemaExtensionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartSchemaExtensionAsync(StartSchemaExtensionRequest, cb)
	assert(StartSchemaExtensionRequest, "You must provide a StartSchemaExtensionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.StartSchemaExtension",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartSchemaExtensionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSnapshot
-- @param CreateSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotAsync(CreateSnapshotRequest, cb)
	assert(CreateSnapshotRequest, "You must provide a CreateSnapshotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSnapshotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableSso
-- @param DisableSsoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableSsoAsync(DisableSsoRequest, cb)
	assert(DisableSsoRequest, "You must provide a DisableSsoRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DisableSso",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableSsoRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
