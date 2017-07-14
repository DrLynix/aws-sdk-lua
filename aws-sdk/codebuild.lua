--- GENERATED CODE - DO NOT MODIFY
-- AWS CodeBuild (codebuild-2016-10-06)

local M = {}

M.metadata = {
	api_version = "2016-10-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codebuild",
	service_abbreviation = "",
	service_full_name = "AWS CodeBuild",
	signature_version = "v4",
	target_prefix = "CodeBuild_20161006",
	timestamp_format = "",
	global_endpoint = "",
	uid = "codebuild-2016-10-06",
}

local EnvironmentPlatform_keys = { "languages" = true, "platform" = true, nil }

function M.AssertEnvironmentPlatform(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentPlatform to be of type 'table'")
	if struct["languages"] then M.AssertEnvironmentLanguages(struct["languages"]) end
	if struct["platform"] then M.AssertPlatformType(struct["platform"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentPlatform_keys[k], "EnvironmentPlatform contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentPlatform
-- <p>A set of Docker images that are related by platform and are managed by AWS CodeBuild.</p>
-- @param languages [EnvironmentLanguages] <p>The list of programming languages that are available for the specified platform.</p>
-- @param platform [PlatformType] <p>The platform's name.</p>
function M.EnvironmentPlatform(languages, platform, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentPlatform")
	local t = { 
		["languages"] = languages,
		["platform"] = platform,
	}
	M.AssertEnvironmentPlatform(t)
	return t
end

local CreateProjectOutput_keys = { "project" = true, nil }

function M.AssertCreateProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectOutput to be of type 'table'")
	if struct["project"] then M.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(CreateProjectOutput_keys[k], "CreateProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectOutput
--  
-- @param project [Project] <p>Information about the build project that was created.</p>
function M.CreateProjectOutput(project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectOutput")
	local t = { 
		["project"] = project,
	}
	M.AssertCreateProjectOutput(t)
	return t
end

local StartBuildOutput_keys = { "build" = true, nil }

function M.AssertStartBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartBuildOutput to be of type 'table'")
	if struct["build"] then M.AssertBuild(struct["build"]) end
	for k,_ in pairs(struct) do
		assert(StartBuildOutput_keys[k], "StartBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartBuildOutput
--  
-- @param build [Build] <p>Information about the build to be run.</p>
function M.StartBuildOutput(build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartBuildOutput")
	local t = { 
		["build"] = build,
	}
	M.AssertStartBuildOutput(t)
	return t
end

local ListCuratedEnvironmentImagesOutput_keys = { "platforms" = true, nil }

function M.AssertListCuratedEnvironmentImagesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCuratedEnvironmentImagesOutput to be of type 'table'")
	if struct["platforms"] then M.AssertEnvironmentPlatforms(struct["platforms"]) end
	for k,_ in pairs(struct) do
		assert(ListCuratedEnvironmentImagesOutput_keys[k], "ListCuratedEnvironmentImagesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCuratedEnvironmentImagesOutput
--  
-- @param platforms [EnvironmentPlatforms] <p>Information about supported platforms for Docker images that are managed by AWS CodeBuild.</p>
function M.ListCuratedEnvironmentImagesOutput(platforms, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCuratedEnvironmentImagesOutput")
	local t = { 
		["platforms"] = platforms,
	}
	M.AssertListCuratedEnvironmentImagesOutput(t)
	return t
end

local Build_keys = { "environment" = true, "phases" = true, "buildComplete" = true, "logs" = true, "artifacts" = true, "projectName" = true, "timeoutInMinutes" = true, "initiator" = true, "buildStatus" = true, "sourceVersion" = true, "source" = true, "currentPhase" = true, "startTime" = true, "endTime" = true, "id" = true, "arn" = true, nil }

function M.AssertBuild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Build to be of type 'table'")
	if struct["environment"] then M.AssertProjectEnvironment(struct["environment"]) end
	if struct["phases"] then M.AssertBuildPhases(struct["phases"]) end
	if struct["buildComplete"] then M.AssertBoolean(struct["buildComplete"]) end
	if struct["logs"] then M.AssertLogsLocation(struct["logs"]) end
	if struct["artifacts"] then M.AssertBuildArtifacts(struct["artifacts"]) end
	if struct["projectName"] then M.AssertNonEmptyString(struct["projectName"]) end
	if struct["timeoutInMinutes"] then M.AssertWrapperInt(struct["timeoutInMinutes"]) end
	if struct["initiator"] then M.AssertString(struct["initiator"]) end
	if struct["buildStatus"] then M.AssertStatusType(struct["buildStatus"]) end
	if struct["sourceVersion"] then M.AssertNonEmptyString(struct["sourceVersion"]) end
	if struct["source"] then M.AssertProjectSource(struct["source"]) end
	if struct["currentPhase"] then M.AssertString(struct["currentPhase"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	if struct["endTime"] then M.AssertTimestamp(struct["endTime"]) end
	if struct["id"] then M.AssertNonEmptyString(struct["id"]) end
	if struct["arn"] then M.AssertNonEmptyString(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(Build_keys[k], "Build contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Build
-- <p>Information about a build.</p>
-- @param environment [ProjectEnvironment] <p>Information about the build environment for this build.</p>
-- @param phases [BuildPhases] <p>Information about all previous build phases that are completed and information about any current build phase that is not yet complete.</p>
-- @param buildComplete [Boolean] <p>Whether the build has finished. True if completed; otherwise, false.</p>
-- @param logs [LogsLocation] <p>Information about the build's logs in Amazon CloudWatch Logs.</p>
-- @param artifacts [BuildArtifacts] <p>Information about the output artifacts for the build.</p>
-- @param projectName [NonEmptyString] <p>The name of the build project.</p>
-- @param timeoutInMinutes [WrapperInt] <p>How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not get marked as completed.</p>
-- @param initiator [String] <p>The entity that started the build. Valid values include:</p> <ul> <li> <p>If AWS CodePipeline started the build, the pipeline's name (for example, <code>codepipeline/my-demo-pipeline</code>).</p> </li> <li> <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example <code>MyUserName</code>).</p> </li> <li> <p>If the Jenkins plugin for AWS CodeBuild started the build, the string <code>CodeBuild-Jenkins-Plugin</code>.</p> </li> </ul>
-- @param buildStatus [StatusType] <p>The current status of the build. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build failed.</p> </li> <li> <p> <code>FAULT</code>: The build faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build timed out.</p> </li> </ul>
-- @param sourceVersion [NonEmptyString] <p>Any version identifier for the version of the source code to be built.</p>
-- @param source [ProjectSource] <p>Information about the source code to be built.</p>
-- @param currentPhase [String] <p>The current build phase.</p>
-- @param startTime [Timestamp] <p>When the build process started, expressed in Unix time format.</p>
-- @param endTime [Timestamp] <p>When the build process ended, expressed in Unix time format.</p>
-- @param id [NonEmptyString] <p>The unique ID for the build.</p>
-- @param arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the build.</p>
function M.Build(environment, phases, buildComplete, logs, artifacts, projectName, timeoutInMinutes, initiator, buildStatus, sourceVersion, source, currentPhase, startTime, endTime, id, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Build")
	local t = { 
		["environment"] = environment,
		["phases"] = phases,
		["buildComplete"] = buildComplete,
		["logs"] = logs,
		["artifacts"] = artifacts,
		["projectName"] = projectName,
		["timeoutInMinutes"] = timeoutInMinutes,
		["initiator"] = initiator,
		["buildStatus"] = buildStatus,
		["sourceVersion"] = sourceVersion,
		["source"] = source,
		["currentPhase"] = currentPhase,
		["startTime"] = startTime,
		["endTime"] = endTime,
		["id"] = id,
		["arn"] = arn,
	}
	M.AssertBuild(t)
	return t
end

local PhaseContext_keys = { "message" = true, "statusCode" = true, nil }

function M.AssertPhaseContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PhaseContext to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["statusCode"] then M.AssertString(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(PhaseContext_keys[k], "PhaseContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PhaseContext
-- <p>Additional information about a build phase that has an error. You can use this information to help troubleshoot a failed build.</p>
-- @param message [String] <p>An explanation of the build phase's context. This explanation might include a command ID and an exit code.</p>
-- @param statusCode [String] <p>The status code for the context of the build phase.</p>
function M.PhaseContext(message, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PhaseContext")
	local t = { 
		["message"] = message,
		["statusCode"] = statusCode,
	}
	M.AssertPhaseContext(t)
	return t
end

local StopBuildInput_keys = { "id" = true, nil }

function M.AssertStopBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopBuildInput to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then M.AssertNonEmptyString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(StopBuildInput_keys[k], "StopBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopBuildInput
--  
-- @param id [NonEmptyString] <p>The ID of the build.</p>
-- Required parameter: id
function M.StopBuildInput(id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopBuildInput")
	local t = { 
		["id"] = id,
	}
	M.AssertStopBuildInput(t)
	return t
end

local UpdateProjectOutput_keys = { "project" = true, nil }

function M.AssertUpdateProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectOutput to be of type 'table'")
	if struct["project"] then M.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProjectOutput_keys[k], "UpdateProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectOutput
--  
-- @param project [Project] <p>Information about the build project that was changed.</p>
function M.UpdateProjectOutput(project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectOutput")
	local t = { 
		["project"] = project,
	}
	M.AssertUpdateProjectOutput(t)
	return t
end

local ProjectSource_keys = { "buildspec" = true, "type" = true, "location" = true, "auth" = true, nil }

function M.AssertProjectSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSource to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["buildspec"] then M.AssertString(struct["buildspec"]) end
	if struct["type"] then M.AssertSourceType(struct["type"]) end
	if struct["location"] then M.AssertString(struct["location"]) end
	if struct["auth"] then M.AssertSourceAuth(struct["auth"]) end
	for k,_ in pairs(struct) do
		assert(ProjectSource_keys[k], "ProjectSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSource
-- <p>Information about the build input source code for the build project.</p>
-- @param buildspec [String] <p>The build spec declaration to use for the builds in this build project.</p> <p>If this value is not specified, a build spec must be included along with the source code to be built.</p>
-- @param type [SourceType] <p>The type of repository that contains the source code to be built. Valid values include:</p> <ul> <li> <p> <code>CODECOMMIT</code>: The source code is in an AWS CodeCommit repository.</p> </li> <li> <p> <code>CODEPIPELINE</code>: The source code settings are specified in the source action of a pipeline in AWS CodePipeline.</p> </li> <li> <p> <code>GITHUB</code>: The source code is in a GitHub repository.</p> </li> <li> <p> <code>S3</code>: The source code is in an Amazon Simple Storage Service (Amazon S3) input bucket.</p> </li> </ul>
-- @param location [String] <p>Information about the location of the source code to be built. Valid values include:</p> <ul> <li> <p>For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, <code>location</code> should not be specified. If it is specified, AWS CodePipeline will ignore it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.</p> </li> <li> <p>For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the build spec (for example, <code>https://git-codecommit.<i>region-ID</i>.amazonaws.com/v1/repos/<i>repo-name</i> </code>).</p> </li> <li> <p>For source code in an Amazon Simple Storage Service (Amazon S3) input bucket, the path to the ZIP file that contains the source code (for example, <code> <i>bucket-name</i>/<i>path</i>/<i>to</i>/<i>object-name</i>.zip</code>)</p> </li> <li> <p>For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the build spec. Also, you must connect your AWS account to your GitHub account. To do this, use the AWS CodeBuild console to begin creating a build project. When you use the console to connect (or reconnect) with GitHub, on the GitHub <b>Authorize application</b> page that displays, for <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to allow AWS CodeBuild to have access to. Then choose <b>Authorize application</b>. (After you have connected to your GitHub account, you do not need to finish creating the build project, and you may then leave the AWS CodeBuild console.) To instruct AWS CodeBuild to then use this connection, in the <code>source</code> object, set the <code>auth</code> object's <code>type</code> value to <code>OAUTH</code>.</p> </li> </ul>
-- @param auth [SourceAuth] <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>GITHUB</code>).</p>
-- Required parameter: type
function M.ProjectSource(buildspec, type, location, auth, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectSource")
	local t = { 
		["buildspec"] = buildspec,
		["type"] = type,
		["location"] = location,
		["auth"] = auth,
	}
	M.AssertProjectSource(t)
	return t
end

local LogsLocation_keys = { "groupName" = true, "deepLink" = true, "streamName" = true, nil }

function M.AssertLogsLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogsLocation to be of type 'table'")
	if struct["groupName"] then M.AssertString(struct["groupName"]) end
	if struct["deepLink"] then M.AssertString(struct["deepLink"]) end
	if struct["streamName"] then M.AssertString(struct["streamName"]) end
	for k,_ in pairs(struct) do
		assert(LogsLocation_keys[k], "LogsLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogsLocation
-- <p>Information about build logs in Amazon CloudWatch Logs.</p>
-- @param groupName [String] <p>The name of the Amazon CloudWatch Logs group for the build logs.</p>
-- @param deepLink [String] <p>The URL to an individual build log in Amazon CloudWatch Logs.</p>
-- @param streamName [String] <p>The name of the Amazon CloudWatch Logs stream for the build logs.</p>
function M.LogsLocation(groupName, deepLink, streamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LogsLocation")
	local t = { 
		["groupName"] = groupName,
		["deepLink"] = deepLink,
		["streamName"] = streamName,
	}
	M.AssertLogsLocation(t)
	return t
end

local ListProjectsInput_keys = { "nextToken" = true, "sortBy" = true, "sortOrder" = true, nil }

function M.AssertListProjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNonEmptyString(struct["nextToken"]) end
	if struct["sortBy"] then M.AssertProjectSortByType(struct["sortBy"]) end
	if struct["sortOrder"] then M.AssertSortOrderType(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(ListProjectsInput_keys[k], "ListProjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsInput
--  
-- @param nextToken [NonEmptyString] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- @param sortBy [ProjectSortByType] <p>The criterion to be used to list build project names. Valid values include:</p> <ul> <li> <p> <code>CREATED_TIME</code>: List the build project names based on when each build project was created.</p> </li> <li> <p> <code>LAST_MODIFIED_TIME</code>: List the build project names based on when information about each build project was last changed.</p> </li> <li> <p> <code>NAME</code>: List the build project names based on each build project's name.</p> </li> </ul> <p>Use <code>sortOrder</code> to specify in what order to list the build project names based on the preceding criteria.</p>
-- @param sortOrder [SortOrderType] <p>The order in which to list build projects. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build project names in ascending order.</p> </li> <li> <p> <code>DESCENDING</code>: List the build project names in descending order.</p> </li> </ul> <p>Use <code>sortBy</code> to specify the criterion to be used to list build project names.</p>
function M.ListProjectsInput(nextToken, sortBy, sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsInput")
	local t = { 
		["nextToken"] = nextToken,
		["sortBy"] = sortBy,
		["sortOrder"] = sortOrder,
	}
	M.AssertListProjectsInput(t)
	return t
end

local BuildPhase_keys = { "contexts" = true, "phaseType" = true, "phaseStatus" = true, "durationInSeconds" = true, "startTime" = true, "endTime" = true, nil }

function M.AssertBuildPhase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildPhase to be of type 'table'")
	if struct["contexts"] then M.AssertPhaseContexts(struct["contexts"]) end
	if struct["phaseType"] then M.AssertBuildPhaseType(struct["phaseType"]) end
	if struct["phaseStatus"] then M.AssertStatusType(struct["phaseStatus"]) end
	if struct["durationInSeconds"] then M.AssertWrapperLong(struct["durationInSeconds"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	if struct["endTime"] then M.AssertTimestamp(struct["endTime"]) end
	for k,_ in pairs(struct) do
		assert(BuildPhase_keys[k], "BuildPhase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildPhase
-- <p>Information about a stage for a build.</p>
-- @param contexts [PhaseContexts] <p>Additional information about a build phase, especially to help troubleshoot a failed build.</p>
-- @param phaseType [BuildPhaseType] <p>The name of the build phase. Valid values include:</p> <ul> <li> <p> <code>BUILD</code>: Core build activities typically occur in this build phase.</p> </li> <li> <p> <code>COMPLETED</code>: The build has been completed.</p> </li> <li> <p> <code>DOWNLOAD_SOURCE</code>: Source code is being downloaded in this build phase.</p> </li> <li> <p> <code>FINALIZING</code>: The build process is completing in this build phase.</p> </li> <li> <p> <code>INSTALL</code>: Installation activities typically occur in this build phase.</p> </li> <li> <p> <code>POST_BUILD</code>: Post-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PRE_BUILD</code>: Pre-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PROVISIONING</code>: The build environment is being set up.</p> </li> <li> <p> <code>SUBMITTED</code>: The build has been submitted.</p> </li> <li> <p> <code>UPLOAD_ARTIFACTS</code>: Build output artifacts are being uploaded to the output location.</p> </li> </ul>
-- @param phaseStatus [StatusType] <p>The current status of the build phase. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build phase failed.</p> </li> <li> <p> <code>FAULT</code>: The build phase faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build phase is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build phase stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build phase succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build phase timed out.</p> </li> </ul>
-- @param durationInSeconds [WrapperLong] <p>How long, in seconds, between the starting and ending times of the build's phase.</p>
-- @param startTime [Timestamp] <p>When the build phase started, expressed in Unix time format.</p>
-- @param endTime [Timestamp] <p>When the build phase ended, expressed in Unix time format.</p>
function M.BuildPhase(contexts, phaseType, phaseStatus, durationInSeconds, startTime, endTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildPhase")
	local t = { 
		["contexts"] = contexts,
		["phaseType"] = phaseType,
		["phaseStatus"] = phaseStatus,
		["durationInSeconds"] = durationInSeconds,
		["startTime"] = startTime,
		["endTime"] = endTime,
	}
	M.AssertBuildPhase(t)
	return t
end

local BatchGetBuildsInput_keys = { "ids" = true, nil }

function M.AssertBatchGetBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetBuildsInput to be of type 'table'")
	assert(struct["ids"], "Expected key ids to exist in table")
	if struct["ids"] then M.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetBuildsInput_keys[k], "BatchGetBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetBuildsInput
--  
-- @param ids [BuildIds] <p>The IDs of the builds.</p>
-- Required parameter: ids
function M.BatchGetBuildsInput(ids, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetBuildsInput")
	local t = { 
		["ids"] = ids,
	}
	M.AssertBatchGetBuildsInput(t)
	return t
end

local ListBuildsInput_keys = { "nextToken" = true, "sortOrder" = true, nil }

function M.AssertListBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsInput to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["sortOrder"] then M.AssertSortOrderType(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(ListBuildsInput_keys[k], "ListBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsInput
--  
-- @param nextToken [String] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- @param sortOrder [SortOrderType] <p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>
function M.ListBuildsInput(nextToken, sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsInput")
	local t = { 
		["nextToken"] = nextToken,
		["sortOrder"] = sortOrder,
	}
	M.AssertListBuildsInput(t)
	return t
end

local DeleteProjectOutput_keys = { nil }

function M.AssertDeleteProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteProjectOutput_keys[k], "DeleteProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectOutput
--  
function M.DeleteProjectOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectOutput")
	local t = { 
	}
	M.AssertDeleteProjectOutput(t)
	return t
end

local UpdateProjectInput_keys = { "name" = true, "serviceRole" = true, "tags" = true, "artifacts" = true, "timeoutInMinutes" = true, "environment" = true, "source" = true, "encryptionKey" = true, "description" = true, nil }

function M.AssertUpdateProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertNonEmptyString(struct["name"]) end
	if struct["serviceRole"] then M.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then M.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["timeoutInMinutes"] then M.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["environment"] then M.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then M.AssertProjectSource(struct["source"]) end
	if struct["encryptionKey"] then M.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["description"] then M.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProjectInput_keys[k], "UpdateProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectInput
--  
-- @param name [NonEmptyString] <p>The name of the build project.</p> <note> <p>You cannot change a build project's name.</p> </note>
-- @param serviceRole [NonEmptyString] <p>The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- @param tags [TagList] <p>The replacement set of tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- @param artifacts [ProjectArtifacts] <p>Information to be changed about the build output artifacts for the build project.</p>
-- @param timeoutInMinutes [TimeOut] <p>The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.</p>
-- @param environment [ProjectEnvironment] <p>Information to be changed about the build environment for the build project.</p>
-- @param source [ProjectSource] <p>Information to be changed about the build input source code for the build project.</p>
-- @param encryptionKey [NonEmptyString] <p>The replacement AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- @param description [ProjectDescription] <p>A new or replacement description of the build project.</p>
-- Required parameter: name
function M.UpdateProjectInput(name, serviceRole, tags, artifacts, timeoutInMinutes, environment, source, encryptionKey, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectInput")
	local t = { 
		["name"] = name,
		["serviceRole"] = serviceRole,
		["tags"] = tags,
		["artifacts"] = artifacts,
		["timeoutInMinutes"] = timeoutInMinutes,
		["environment"] = environment,
		["source"] = source,
		["encryptionKey"] = encryptionKey,
		["description"] = description,
	}
	M.AssertUpdateProjectInput(t)
	return t
end

local BatchGetBuildsOutput_keys = { "buildsNotFound" = true, "builds" = true, nil }

function M.AssertBatchGetBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetBuildsOutput to be of type 'table'")
	if struct["buildsNotFound"] then M.AssertBuildIds(struct["buildsNotFound"]) end
	if struct["builds"] then M.AssertBuilds(struct["builds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetBuildsOutput_keys[k], "BatchGetBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetBuildsOutput
--  
-- @param buildsNotFound [BuildIds] <p>The IDs of builds for which information could not be found.</p>
-- @param builds [Builds] <p>Information about the requested builds.</p>
function M.BatchGetBuildsOutput(buildsNotFound, builds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetBuildsOutput")
	local t = { 
		["buildsNotFound"] = buildsNotFound,
		["builds"] = builds,
	}
	M.AssertBatchGetBuildsOutput(t)
	return t
end

local ProjectArtifacts_keys = { "packaging" = true, "name" = true, "namespaceType" = true, "location" = true, "path" = true, "type" = true, nil }

function M.AssertProjectArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectArtifacts to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["packaging"] then M.AssertArtifactPackaging(struct["packaging"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["namespaceType"] then M.AssertArtifactNamespace(struct["namespaceType"]) end
	if struct["location"] then M.AssertString(struct["location"]) end
	if struct["path"] then M.AssertString(struct["path"]) end
	if struct["type"] then M.AssertArtifactsType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(ProjectArtifacts_keys[k], "ProjectArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectArtifacts
-- <p>Information about the build output artifacts for the build project.</p>
-- @param packaging [ArtifactPackaging] <p>The type of build output artifact to create, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output artifacts instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p> <ul> <li> <p> <code>NONE</code>: AWS CodeBuild will create in the output bucket a folder containing the build output. This is the default if <code>packaging</code> is not specified.</p> </li> <li> <p> <code>ZIP</code>: AWS CodeBuild will create in the output bucket a ZIP file containing the build output.</p> </li> </ul> </li> </ul>
-- @param name [String] <p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that AWS CodeBuild will use to name and store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output artifact object.</p> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i>/MyArtifact.zip</code>.</p>
-- @param namespaceType [ArtifactNamespace] <p>Along with <code>path</code> and <code>name</code>, the pattern that AWS CodeBuild will use to determine the name and location to store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, then valid values include:</p> <ul> <li> <p> <code>BUILD_ID</code>: Include the build ID in the location of the build output artifact.</p> </li> <li> <p> <code>NONE</code>: Do not include the build ID. This is the default if <code>namespaceType</code> is not specified.</p> </li> </ul> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i>/MyArtifact.zip</code>.</p>
-- @param location [String] <p>Information about the build output artifact location, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output locations instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output bucket.</p> </li> </ul>
-- @param path [String] <p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that AWS CodeBuild will use to name and store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output artifact. If <code>path</code> is not specified, then <code>path</code> will not be used.</p> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in the output bucket at <code>MyArtifacts/MyArtifact.zip</code>.</p>
-- @param type [ArtifactsType] <p>The type of build output artifact. Valid values include:</p> <ul> <li> <p> <code>CODEPIPELINE</code>: The build project will have build output generated through AWS CodePipeline.</p> </li> <li> <p> <code>NO_ARTIFACTS</code>: The build project will not produce any build output.</p> </li> <li> <p> <code>S3</code>: The build project will store build output in Amazon Simple Storage Service (Amazon S3).</p> </li> </ul>
-- Required parameter: type
function M.ProjectArtifacts(packaging, name, namespaceType, location, path, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectArtifacts")
	local t = { 
		["packaging"] = packaging,
		["name"] = name,
		["namespaceType"] = namespaceType,
		["location"] = location,
		["path"] = path,
		["type"] = type,
	}
	M.AssertProjectArtifacts(t)
	return t
end

local Tag_keys = { "value" = true, "key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["value"] then M.AssertValueInput(struct["value"]) end
	if struct["key"] then M.AssertKeyInput(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A tag, consisting of a key and a value.</p> <p>This tag is available for use by AWS services that support tags in AWS CodeBuild.</p>
-- @param value [ValueInput] <p>The tag's value.</p>
-- @param key [KeyInput] <p>The tag's key.</p>
function M.Tag(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertTag(t)
	return t
end

local ListBuildsForProjectInput_keys = { "projectName" = true, "nextToken" = true, "sortOrder" = true, nil }

function M.AssertListBuildsForProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsForProjectInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then M.AssertNonEmptyString(struct["projectName"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["sortOrder"] then M.AssertSortOrderType(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(ListBuildsForProjectInput_keys[k], "ListBuildsForProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsForProjectInput
--  
-- @param projectName [NonEmptyString] <p>The name of the build project.</p>
-- @param nextToken [String] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- @param sortOrder [SortOrderType] <p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>
-- Required parameter: projectName
function M.ListBuildsForProjectInput(projectName, nextToken, sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsForProjectInput")
	local t = { 
		["projectName"] = projectName,
		["nextToken"] = nextToken,
		["sortOrder"] = sortOrder,
	}
	M.AssertListBuildsForProjectInput(t)
	return t
end

local Project_keys = { "name" = true, "serviceRole" = true, "tags" = true, "artifacts" = true, "lastModified" = true, "timeoutInMinutes" = true, "created" = true, "environment" = true, "source" = true, "encryptionKey" = true, "arn" = true, "description" = true, nil }

function M.AssertProject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Project to be of type 'table'")
	if struct["name"] then M.AssertProjectName(struct["name"]) end
	if struct["serviceRole"] then M.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then M.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["lastModified"] then M.AssertTimestamp(struct["lastModified"]) end
	if struct["timeoutInMinutes"] then M.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["created"] then M.AssertTimestamp(struct["created"]) end
	if struct["environment"] then M.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then M.AssertProjectSource(struct["source"]) end
	if struct["encryptionKey"] then M.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["arn"] then M.AssertString(struct["arn"]) end
	if struct["description"] then M.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(Project_keys[k], "Project contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Project
-- <p>Information about a build project.</p>
-- @param name [ProjectName] <p>The name of the build project.</p>
-- @param serviceRole [NonEmptyString] <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- @param tags [TagList] <p>The tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- @param artifacts [ProjectArtifacts] <p>Information about the build output artifacts for the build project.</p>
-- @param lastModified [Timestamp] <p>When the build project's settings were last modified, expressed in Unix time format.</p>
-- @param timeoutInMinutes [TimeOut] <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>
-- @param created [Timestamp] <p>When the build project was created, expressed in Unix time format.</p>
-- @param environment [ProjectEnvironment] <p>Information about the build environment for this build project.</p>
-- @param source [ProjectSource] <p>Information about the build input source code for this build project.</p>
-- @param encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>This is expressed either as the CMK's Amazon Resource Name (ARN) or, if specified, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- @param arn [String] <p>The Amazon Resource Name (ARN) of the build project.</p>
-- @param description [ProjectDescription] <p>A description that makes the build project easy to identify.</p>
function M.Project(name, serviceRole, tags, artifacts, lastModified, timeoutInMinutes, created, environment, source, encryptionKey, arn, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Project")
	local t = { 
		["name"] = name,
		["serviceRole"] = serviceRole,
		["tags"] = tags,
		["artifacts"] = artifacts,
		["lastModified"] = lastModified,
		["timeoutInMinutes"] = timeoutInMinutes,
		["created"] = created,
		["environment"] = environment,
		["source"] = source,
		["encryptionKey"] = encryptionKey,
		["arn"] = arn,
		["description"] = description,
	}
	M.AssertProject(t)
	return t
end

local EnvironmentImage_keys = { "name" = true, "description" = true, nil }

function M.AssertEnvironmentImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentImage to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentImage_keys[k], "EnvironmentImage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentImage
-- <p>Information about a Docker image that is managed by AWS CodeBuild.</p>
-- @param name [String] <p>The name of the Docker image.</p>
-- @param description [String] <p>The description of the Docker image.</p>
function M.EnvironmentImage(name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentImage")
	local t = { 
		["name"] = name,
		["description"] = description,
	}
	M.AssertEnvironmentImage(t)
	return t
end

local ListCuratedEnvironmentImagesInput_keys = { nil }

function M.AssertListCuratedEnvironmentImagesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCuratedEnvironmentImagesInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ListCuratedEnvironmentImagesInput_keys[k], "ListCuratedEnvironmentImagesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCuratedEnvironmentImagesInput
--  
function M.ListCuratedEnvironmentImagesInput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCuratedEnvironmentImagesInput")
	local t = { 
	}
	M.AssertListCuratedEnvironmentImagesInput(t)
	return t
end

local ResourceAlreadyExistsException_keys = { nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The specified AWS resource cannot be created, because an AWS resource with the same settings already exists.</p>
function M.ResourceAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

local CreateProjectInput_keys = { "name" = true, "serviceRole" = true, "tags" = true, "artifacts" = true, "timeoutInMinutes" = true, "environment" = true, "source" = true, "encryptionKey" = true, "description" = true, nil }

function M.AssertCreateProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["source"], "Expected key source to exist in table")
	assert(struct["artifacts"], "Expected key artifacts to exist in table")
	assert(struct["environment"], "Expected key environment to exist in table")
	if struct["name"] then M.AssertProjectName(struct["name"]) end
	if struct["serviceRole"] then M.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then M.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["timeoutInMinutes"] then M.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["environment"] then M.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then M.AssertProjectSource(struct["source"]) end
	if struct["encryptionKey"] then M.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["description"] then M.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateProjectInput_keys[k], "CreateProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectInput
--  
-- @param name [ProjectName] <p>The name of the build project.</p>
-- @param serviceRole [NonEmptyString] <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- @param tags [TagList] <p>A set of tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- @param artifacts [ProjectArtifacts] <p>Information about the build output artifacts for the build project.</p>
-- @param timeoutInMinutes [TimeOut] <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any build that has not been marked as completed. The default is 60 minutes.</p>
-- @param environment [ProjectEnvironment] <p>Information about the build environment for the build project.</p>
-- @param source [ProjectSource] <p>Information about the build input source code for the build project.</p>
-- @param encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- @param description [ProjectDescription] <p>A description that makes the build project easy to identify.</p>
-- Required parameter: name
-- Required parameter: source
-- Required parameter: artifacts
-- Required parameter: environment
function M.CreateProjectInput(name, serviceRole, tags, artifacts, timeoutInMinutes, environment, source, encryptionKey, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectInput")
	local t = { 
		["name"] = name,
		["serviceRole"] = serviceRole,
		["tags"] = tags,
		["artifacts"] = artifacts,
		["timeoutInMinutes"] = timeoutInMinutes,
		["environment"] = environment,
		["source"] = source,
		["encryptionKey"] = encryptionKey,
		["description"] = description,
	}
	M.AssertCreateProjectInput(t)
	return t
end

local ListBuildsOutput_keys = { "nextToken" = true, "ids" = true, nil }

function M.AssertListBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["ids"] then M.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(ListBuildsOutput_keys[k], "ListBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsOutput
--  
-- @param nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @param ids [BuildIds] <p>A list of build IDs, with each build ID representing a single build.</p>
function M.ListBuildsOutput(nextToken, ids, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsOutput")
	local t = { 
		["nextToken"] = nextToken,
		["ids"] = ids,
	}
	M.AssertListBuildsOutput(t)
	return t
end

local AccountLimitExceededException_keys = { nil }

function M.AssertAccountLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AccountLimitExceededException_keys[k], "AccountLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimitExceededException
-- <p>An AWS service limit was exceeded for the calling AWS account.</p>
function M.AccountLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountLimitExceededException")
	local t = { 
	}
	M.AssertAccountLimitExceededException(t)
	return t
end

local ListBuildsForProjectOutput_keys = { "nextToken" = true, "ids" = true, nil }

function M.AssertListBuildsForProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsForProjectOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["ids"] then M.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(ListBuildsForProjectOutput_keys[k], "ListBuildsForProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsForProjectOutput
--  
-- @param nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @param ids [BuildIds] <p>A list of build IDs for the specified build project, with each build ID representing a single build.</p>
function M.ListBuildsForProjectOutput(nextToken, ids, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsForProjectOutput")
	local t = { 
		["nextToken"] = nextToken,
		["ids"] = ids,
	}
	M.AssertListBuildsForProjectOutput(t)
	return t
end

local BatchGetProjectsOutput_keys = { "projectsNotFound" = true, "projects" = true, nil }

function M.AssertBatchGetProjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetProjectsOutput to be of type 'table'")
	if struct["projectsNotFound"] then M.AssertProjectNames(struct["projectsNotFound"]) end
	if struct["projects"] then M.AssertProjects(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetProjectsOutput_keys[k], "BatchGetProjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetProjectsOutput
--  
-- @param projectsNotFound [ProjectNames] <p>The names of build projects for which information could not be found.</p>
-- @param projects [Projects] <p>Information about the requested build projects.</p>
function M.BatchGetProjectsOutput(projectsNotFound, projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetProjectsOutput")
	local t = { 
		["projectsNotFound"] = projectsNotFound,
		["projects"] = projects,
	}
	M.AssertBatchGetProjectsOutput(t)
	return t
end

local ListProjectsOutput_keys = { "nextToken" = true, "projects" = true, nil }

function M.AssertListProjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["projects"] then M.AssertProjectNames(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(ListProjectsOutput_keys[k], "ListProjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsOutput
--  
-- @param nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @param projects [ProjectNames] <p>The list of build project names, with each build project name representing a single build project.</p>
function M.ListProjectsOutput(nextToken, projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsOutput")
	local t = { 
		["nextToken"] = nextToken,
		["projects"] = projects,
	}
	M.AssertListProjectsOutput(t)
	return t
end

local SourceAuth_keys = { "resource" = true, "type" = true, nil }

function M.AssertSourceAuth(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceAuth to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["resource"] then M.AssertString(struct["resource"]) end
	if struct["type"] then M.AssertSourceAuthType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(SourceAuth_keys[k], "SourceAuth contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceAuth
-- <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>GITHUB</code>).</p>
-- @param resource [String] <p>The resource value that applies to the specified authorization type.</p>
-- @param type [SourceAuthType] <p>The authorization type to use. The only valid value is <code>OAUTH</code>, which represents the OAuth authorization type.</p>
-- Required parameter: type
function M.SourceAuth(resource, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceAuth")
	local t = { 
		["resource"] = resource,
		["type"] = type,
	}
	M.AssertSourceAuth(t)
	return t
end

local EnvironmentVariable_keys = { "name" = true, "value" = true, nil }

function M.AssertEnvironmentVariable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentVariable to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["name"] then M.AssertNonEmptyString(struct["name"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentVariable_keys[k], "EnvironmentVariable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentVariable
-- <p>Information about an environment variable for a build project or a build.</p>
-- @param name [NonEmptyString] <p>The name or key of the environment variable.</p>
-- @param value [String] <p>The value of the environment variable.</p> <important> <p>We strongly discourage using environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. Environment variables can be displayed in plain text using tools such as the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI).</p> </important>
-- Required parameter: name
-- Required parameter: value
function M.EnvironmentVariable(name, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentVariable")
	local t = { 
		["name"] = name,
		["value"] = value,
	}
	M.AssertEnvironmentVariable(t)
	return t
end

local ResourceNotFoundException_keys = { nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified AWS resource cannot be found.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local BatchGetProjectsInput_keys = { "names" = true, nil }

function M.AssertBatchGetProjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetProjectsInput to be of type 'table'")
	assert(struct["names"], "Expected key names to exist in table")
	if struct["names"] then M.AssertProjectNames(struct["names"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetProjectsInput_keys[k], "BatchGetProjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetProjectsInput
--  
-- @param names [ProjectNames] <p>The names of the build projects.</p>
-- Required parameter: names
function M.BatchGetProjectsInput(names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetProjectsInput")
	local t = { 
		["names"] = names,
	}
	M.AssertBatchGetProjectsInput(t)
	return t
end

local StopBuildOutput_keys = { "build" = true, nil }

function M.AssertStopBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopBuildOutput to be of type 'table'")
	if struct["build"] then M.AssertBuild(struct["build"]) end
	for k,_ in pairs(struct) do
		assert(StopBuildOutput_keys[k], "StopBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopBuildOutput
--  
-- @param build [Build] <p>Information about the build.</p>
function M.StopBuildOutput(build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopBuildOutput")
	local t = { 
		["build"] = build,
	}
	M.AssertStopBuildOutput(t)
	return t
end

local DeleteProjectInput_keys = { "name" = true, nil }

function M.AssertDeleteProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertNonEmptyString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProjectInput_keys[k], "DeleteProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectInput
--  
-- @param name [NonEmptyString] <p>The name of the build project.</p>
-- Required parameter: name
function M.DeleteProjectInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectInput")
	local t = { 
		["name"] = name,
	}
	M.AssertDeleteProjectInput(t)
	return t
end

local StartBuildInput_keys = { "buildspecOverride" = true, "environmentVariablesOverride" = true, "artifactsOverride" = true, "projectName" = true, "sourceVersion" = true, "timeoutInMinutesOverride" = true, nil }

function M.AssertStartBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartBuildInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["buildspecOverride"] then M.AssertString(struct["buildspecOverride"]) end
	if struct["environmentVariablesOverride"] then M.AssertEnvironmentVariables(struct["environmentVariablesOverride"]) end
	if struct["artifactsOverride"] then M.AssertProjectArtifacts(struct["artifactsOverride"]) end
	if struct["projectName"] then M.AssertNonEmptyString(struct["projectName"]) end
	if struct["sourceVersion"] then M.AssertString(struct["sourceVersion"]) end
	if struct["timeoutInMinutesOverride"] then M.AssertTimeOut(struct["timeoutInMinutesOverride"]) end
	for k,_ in pairs(struct) do
		assert(StartBuildInput_keys[k], "StartBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartBuildInput
--  
-- @param buildspecOverride [String] <p>A build spec declaration that overrides, for this build only, the latest one already defined in the build project.</p>
-- @param environmentVariablesOverride [EnvironmentVariables] <p>A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.</p>
-- @param artifactsOverride [ProjectArtifacts] <p>Build output artifact settings that override, for this build only, the latest ones already defined in the build project.</p>
-- @param projectName [NonEmptyString] <p>The name of the build project to start running a build.</p>
-- @param sourceVersion [String] <p>A version of the build input to be built, for this build only. If not specified, the latest version will be used. If specified, must be one of:</p> <ul> <li> <p>For AWS CodeCommit or GitHub: the commit ID to use.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.</p> </li> </ul>
-- @param timeoutInMinutesOverride [TimeOut] <p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.</p>
-- Required parameter: projectName
function M.StartBuildInput(buildspecOverride, environmentVariablesOverride, artifactsOverride, projectName, sourceVersion, timeoutInMinutesOverride, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartBuildInput")
	local t = { 
		["buildspecOverride"] = buildspecOverride,
		["environmentVariablesOverride"] = environmentVariablesOverride,
		["artifactsOverride"] = artifactsOverride,
		["projectName"] = projectName,
		["sourceVersion"] = sourceVersion,
		["timeoutInMinutesOverride"] = timeoutInMinutesOverride,
	}
	M.AssertStartBuildInput(t)
	return t
end

local InvalidInputException_keys = { nil }

function M.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidInputException_keys[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The input value that was provided is not valid.</p>
function M.InvalidInputException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
	}
	M.AssertInvalidInputException(t)
	return t
end

local ProjectEnvironment_keys = { "computeType" = true, "privilegedMode" = true, "image" = true, "type" = true, "environmentVariables" = true, nil }

function M.AssertProjectEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectEnvironment to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["image"], "Expected key image to exist in table")
	assert(struct["computeType"], "Expected key computeType to exist in table")
	if struct["computeType"] then M.AssertComputeType(struct["computeType"]) end
	if struct["privilegedMode"] then M.AssertWrapperBoolean(struct["privilegedMode"]) end
	if struct["image"] then M.AssertNonEmptyString(struct["image"]) end
	if struct["type"] then M.AssertEnvironmentType(struct["type"]) end
	if struct["environmentVariables"] then M.AssertEnvironmentVariables(struct["environmentVariables"]) end
	for k,_ in pairs(struct) do
		assert(ProjectEnvironment_keys[k], "ProjectEnvironment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectEnvironment
-- <p>Information about the build environment of the build project.</p>
-- @param computeType [ComputeType] <p>Information about the compute resources the build project will use. Available values include:</p> <ul> <li> <p> <code>BUILD_GENERAL1_SMALL</code>: Use up to 3 GB memory and 2 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 7 GB memory and 4 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_LARGE</code>: Use up to 15 GB memory and 8 vCPUs for builds.</p> </li> </ul>
-- @param privilegedMode [WrapperBoolean] <p>If set to true, enables running the Docker daemon inside a Docker container; otherwise, false or not specified (the default). This value must be set to true only if this build project will be used to build Docker images, and the specified build environment image is not one provided by AWS CodeBuild with Docker support. Otherwise, all associated builds that attempt to interact with the Docker daemon will fail. Note that you must also start the Docker daemon so that your builds can interact with it as needed. One way to do this is to initialize the Docker daemon in the install phase of your build spec by running the following build commands. (Do not run the following build commands if the specified build environment image is provided by AWS CodeBuild with Docker support.)</p> <p> <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=vfs&amp; - timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"</code> </p>
-- @param image [NonEmptyString] <p>The ID of the Docker image to use for this build project.</p>
-- @param type [EnvironmentType] <p>The type of build environment to use for related builds.</p>
-- @param environmentVariables [EnvironmentVariables] <p>A set of environment variables to make available to builds for this build project.</p>
-- Required parameter: type
-- Required parameter: image
-- Required parameter: computeType
function M.ProjectEnvironment(computeType, privilegedMode, image, type, environmentVariables, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectEnvironment")
	local t = { 
		["computeType"] = computeType,
		["privilegedMode"] = privilegedMode,
		["image"] = image,
		["type"] = type,
		["environmentVariables"] = environmentVariables,
	}
	M.AssertProjectEnvironment(t)
	return t
end

local EnvironmentLanguage_keys = { "images" = true, "language" = true, nil }

function M.AssertEnvironmentLanguage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentLanguage to be of type 'table'")
	if struct["images"] then M.AssertEnvironmentImages(struct["images"]) end
	if struct["language"] then M.AssertLanguageType(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentLanguage_keys[k], "EnvironmentLanguage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentLanguage
-- <p>A set of Docker images that are related by programming language and are managed by AWS CodeBuild.</p>
-- @param images [EnvironmentImages] <p>The list of Docker images that are related by the specified programming language.</p>
-- @param language [LanguageType] <p>The programming language for the Docker images.</p>
function M.EnvironmentLanguage(images, language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentLanguage")
	local t = { 
		["images"] = images,
		["language"] = language,
	}
	M.AssertEnvironmentLanguage(t)
	return t
end

local BuildArtifacts_keys = { "md5sum" = true, "location" = true, "sha256sum" = true, nil }

function M.AssertBuildArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildArtifacts to be of type 'table'")
	if struct["md5sum"] then M.AssertString(struct["md5sum"]) end
	if struct["location"] then M.AssertString(struct["location"]) end
	if struct["sha256sum"] then M.AssertString(struct["sha256sum"]) end
	for k,_ in pairs(struct) do
		assert(BuildArtifacts_keys[k], "BuildArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildArtifacts
-- <p>Information about build output artifacts.</p>
-- @param md5sum [String] <p>The MD5 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm both file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>
-- @param location [String] <p>Information about the location of the build artifacts.</p>
-- @param sha256sum [String] <p>The SHA-256 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm both file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>
function M.BuildArtifacts(md5sum, location, sha256sum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildArtifacts")
	local t = { 
		["md5sum"] = md5sum,
		["location"] = location,
		["sha256sum"] = sha256sum,
	}
	M.AssertBuildArtifacts(t)
	return t
end

function M.AssertComputeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputeType to be of type 'string'")
end

--  
function M.ComputeType(str)
	M.AssertComputeType(str)
	return str
end

function M.AssertProjectDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectDescription to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ProjectDescription(str)
	M.AssertProjectDescription(str)
	return str
end

function M.AssertArtifactNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactNamespace to be of type 'string'")
end

--  
function M.ArtifactNamespace(str)
	M.AssertArtifactNamespace(str)
	return str
end

function M.AssertSourceAuthType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceAuthType to be of type 'string'")
end

--  
function M.SourceAuthType(str)
	M.AssertSourceAuthType(str)
	return str
end

function M.AssertValueInput(str)
	assert(str)
	assert(type(str) == "string", "Expected ValueInput to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%%p{L}%%p{Z}%%p{N}_.:/=@+%%-]*)$"), "Expected string to match pattern '^([%%p{L}%%p{Z}%%p{N}_.:/=@+%%-]*)$'")
end

--  
function M.ValueInput(str)
	M.AssertValueInput(str)
	return str
end

function M.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	M.AssertStatusType(str)
	return str
end

function M.AssertArtifactPackaging(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactPackaging to be of type 'string'")
end

--  
function M.ArtifactPackaging(str)
	M.AssertArtifactPackaging(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertProjectSortByType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectSortByType to be of type 'string'")
end

--  
function M.ProjectSortByType(str)
	M.AssertProjectSortByType(str)
	return str
end

function M.AssertBuildPhaseType(str)
	assert(str)
	assert(type(str) == "string", "Expected BuildPhaseType to be of type 'string'")
end

--  
function M.BuildPhaseType(str)
	M.AssertBuildPhaseType(str)
	return str
end

function M.AssertPlatformType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformType to be of type 'string'")
end

--  
function M.PlatformType(str)
	M.AssertPlatformType(str)
	return str
end

function M.AssertLanguageType(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageType to be of type 'string'")
end

--  
function M.LanguageType(str)
	M.AssertLanguageType(str)
	return str
end

function M.AssertKeyInput(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyInput to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%%p{L}%%p{Z}%%p{N}_.:/=@+%%-]*)$"), "Expected string to match pattern '^([%%p{L}%%p{Z}%%p{N}_.:/=@+%%-]*)$'")
end

--  
function M.KeyInput(str)
	M.AssertKeyInput(str)
	return str
end

function M.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonEmptyString(str)
	M.AssertNonEmptyString(str)
	return str
end

function M.AssertEnvironmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentType to be of type 'string'")
end

--  
function M.EnvironmentType(str)
	M.AssertEnvironmentType(str)
	return str
end

function M.AssertArtifactsType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactsType to be of type 'string'")
end

--  
function M.ArtifactsType(str)
	M.AssertArtifactsType(str)
	return str
end

function M.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	M.AssertSourceType(str)
	return str
end

function M.AssertProjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[A-Za-z0-9][A-Za-z0-9%-_]{1,254}"), "Expected string to match pattern '[A-Za-z0-9][A-Za-z0-9%-_]{1,254}'")
end

--  
function M.ProjectName(str)
	M.AssertProjectName(str)
	return str
end

function M.AssertSortOrderType(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrderType to be of type 'string'")
end

--  
function M.SortOrderType(str)
	M.AssertSortOrderType(str)
	return str
end

function M.AssertWrapperLong(long)
	assert(long)
	assert(type(long) == "number", "Expected WrapperLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.WrapperLong(long)
	M.AssertWrapperLong(long)
	return long
end

function M.AssertWrapperInt(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WrapperInt to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WrapperInt(integer)
	M.AssertWrapperInt(integer)
	return integer
end

function M.AssertTimeOut(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TimeOut to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 480, "Expected integer to be max 480")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.TimeOut(integer)
	M.AssertTimeOut(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertWrapperBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected WrapperBoolean to be of type 'boolean'")
end

function M.WrapperBoolean(boolean)
	M.AssertWrapperBoolean(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertEnvironmentVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentVariables to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnvironmentVariable(v)
	end
end

--  
-- List of EnvironmentVariable objects
function M.EnvironmentVariables(list)
	M.AssertEnvironmentVariables(list)
	return list
end

function M.AssertProjectNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectNames to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.ProjectNames(list)
	M.AssertProjectNames(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
	return list
end

function M.AssertEnvironmentImages(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentImages to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnvironmentImage(v)
	end
end

--  
-- List of EnvironmentImage objects
function M.EnvironmentImages(list)
	M.AssertEnvironmentImages(list)
	return list
end

function M.AssertPhaseContexts(list)
	assert(list)
	assert(type(list) == "table", "Expected PhaseContexts to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPhaseContext(v)
	end
end

--  
-- List of PhaseContext objects
function M.PhaseContexts(list)
	M.AssertPhaseContexts(list)
	return list
end

function M.AssertProjects(list)
	assert(list)
	assert(type(list) == "table", "Expected Projects to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProject(v)
	end
end

--  
-- List of Project objects
function M.Projects(list)
	M.AssertProjects(list)
	return list
end

function M.AssertBuildPhases(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildPhases to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBuildPhase(v)
	end
end

--  
-- List of BuildPhase objects
function M.BuildPhases(list)
	M.AssertBuildPhases(list)
	return list
end

function M.AssertBuilds(list)
	assert(list)
	assert(type(list) == "table", "Expected Builds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBuild(v)
	end
end

--  
-- List of Build objects
function M.Builds(list)
	M.AssertBuilds(list)
	return list
end

function M.AssertEnvironmentPlatforms(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentPlatforms to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnvironmentPlatform(v)
	end
end

--  
-- List of EnvironmentPlatform objects
function M.EnvironmentPlatforms(list)
	M.AssertEnvironmentPlatforms(list)
	return list
end

function M.AssertBuildIds(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildIds to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.BuildIds(list)
	M.AssertBuildIds(list)
	return list
end

function M.AssertEnvironmentLanguages(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentLanguages to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnvironmentLanguage(v)
	end
end

--  
-- List of EnvironmentLanguage objects
function M.EnvironmentLanguages(list)
	M.AssertEnvironmentLanguages(list)
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
			return "codebuild.amazonaws.com"
		end
	end
	local ss = { "codebuild" }
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
--- ListBuilds
-- @param ListBuildsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBuildsAsync(ListBuildsInput, cb)
	assert(ListBuildsInput, "You must provide a ListBuildsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListBuilds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBuildsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopBuild
-- @param StopBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopBuildAsync(StopBuildInput, cb)
	assert(StopBuildInput, "You must provide a StopBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.StopBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBuildsForProject
-- @param ListBuildsForProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBuildsForProjectAsync(ListBuildsForProjectInput, cb)
	assert(ListBuildsForProjectInput, "You must provide a ListBuildsForProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListBuildsForProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBuildsForProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetBuilds
-- @param BatchGetBuildsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetBuildsAsync(BatchGetBuildsInput, cb)
	assert(BatchGetBuildsInput, "You must provide a BatchGetBuildsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchGetBuilds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetBuildsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProject
-- @param CreateProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProjectAsync(CreateProjectInput, cb)
	assert(CreateProjectInput, "You must provide a CreateProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.CreateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCuratedEnvironmentImages
-- @param ListCuratedEnvironmentImagesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListCuratedEnvironmentImagesAsync(ListCuratedEnvironmentImagesInput, cb)
	assert(ListCuratedEnvironmentImagesInput, "You must provide a ListCuratedEnvironmentImagesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListCuratedEnvironmentImages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCuratedEnvironmentImagesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProjects
-- @param ListProjectsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListProjectsAsync(ListProjectsInput, cb)
	assert(ListProjectsInput, "You must provide a ListProjectsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProjectsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateProject
-- @param UpdateProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProjectAsync(UpdateProjectInput, cb)
	assert(UpdateProjectInput, "You must provide a UpdateProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.UpdateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartBuild
-- @param StartBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartBuildAsync(StartBuildInput, cb)
	assert(StartBuildInput, "You must provide a StartBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.StartBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteProject
-- @param DeleteProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProjectAsync(DeleteProjectInput, cb)
	assert(DeleteProjectInput, "You must provide a DeleteProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.DeleteProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetProjects
-- @param BatchGetProjectsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetProjectsAsync(BatchGetProjectsInput, cb)
	assert(BatchGetProjectsInput, "You must provide a BatchGetProjectsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchGetProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetProjectsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
