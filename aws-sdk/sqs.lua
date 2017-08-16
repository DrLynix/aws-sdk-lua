--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Queue Service (sqs-2012-11-05)

local M = {}

M.metadata = {
	api_version = "2012-11-05",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "sqs",
	service_abbreviation = "Amazon SQS",
	service_full_name = "Amazon Simple Queue Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "sqs-2012-11-05",
}

local keys = {}
local asserts = {}

keys.UnsupportedOperation = { nil }

function asserts.AssertUnsupportedOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperation[k], "UnsupportedOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperation
-- <p>Error code 400. Unsupported operation.</p>
function M.UnsupportedOperation(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperation")
	local t = { 
	}
	asserts.AssertUnsupportedOperation(t)
	return t
end

keys.PurgeQueueInProgress = { nil }

function asserts.AssertPurgeQueueInProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurgeQueueInProgress to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PurgeQueueInProgress[k], "PurgeQueueInProgress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurgeQueueInProgress
-- <p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>
function M.PurgeQueueInProgress(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurgeQueueInProgress")
	local t = { 
	}
	asserts.AssertPurgeQueueInProgress(t)
	return t
end

keys.MessageAttributeValue = { ["BinaryListValues"] = true, ["StringValue"] = true, ["DataType"] = true, ["BinaryValue"] = true, ["StringListValues"] = true, nil }

function asserts.AssertMessageAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageAttributeValue to be of type 'table'")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["BinaryListValues"] then asserts.AssertBinaryList(struct["BinaryListValues"]) end
	if struct["StringValue"] then asserts.AssertString(struct["StringValue"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["BinaryValue"] then asserts.AssertBinary(struct["BinaryValue"]) end
	if struct["StringListValues"] then asserts.AssertStringList(struct["StringListValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageAttributeValue[k], "MessageAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageAttributeValue
-- <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
-- @param _BinaryListValues [BinaryList] <p>Not implemented. Reserved for future use.</p>
-- @param _StringValue [String] <p>Strings are Unicode with UTF-8 binary encoding. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">ASCII Printable Characters</a>.</p>
-- @param _DataType [String] <p>Amazon SQS supports the following logical data types: <code>String</code>, <code>Number</code>, and <code>Binary</code>. For the <code>Number</code> data type, you must use <code>StringValue</code>.</p> <p>You can also append custom labels. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-data-types-validation">Message Attribute Data Types and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param _BinaryValue [Binary] <p>Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.</p>
-- @param _StringListValues [StringList] <p>Not implemented. Reserved for future use.</p>
-- Required parameter: DataType
function M.MessageAttributeValue(_BinaryListValues, _StringValue, _DataType, _BinaryValue, _StringListValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageAttributeValue")
	local t = { 
		["BinaryListValues"] = _BinaryListValues,
		["StringValue"] = _StringValue,
		["DataType"] = _DataType,
		["BinaryValue"] = _BinaryValue,
		["StringListValues"] = _StringListValues,
	}
	asserts.AssertMessageAttributeValue(t)
	return t
end

keys.SetQueueAttributesRequest = { ["QueueUrl"] = true, ["Attributes"] = true, nil }

function asserts.AssertSetQueueAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetQueueAttributesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Attributes"] then asserts.AssertQueueAttributeMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetQueueAttributesRequest[k], "SetQueueAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetQueueAttributesRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue whose attributes are set.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _Attributes [QueueAttributeMap] <p>A map of attributes to set.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>SetQueueAttributes</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 (15 minutes). The default is 0 (zero). </p> </li> <li> <p> <code>MaximumMessageSize</code> - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> - The queue's policy. A valid AWS policy. For more information about policy structure, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: an integer from 0 to 20 (seconds). The default is 0. </p> </li> <li> <p> <code>RedrivePolicy</code> - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> <note> <p>The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> - The visibility timeout for the queue. Valid values: an integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/aws/sqs</code>. For more examples, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in seconds, for which Amazon SQS can reuse a <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attribute applies only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>ContentBasedDeduplication</code> - Enables content-based deduplication. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>QueueArn</code> </p> </li> </ul>
-- Required parameter: QueueUrl
-- Required parameter: Attributes
function M.SetQueueAttributesRequest(_QueueUrl, _Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetQueueAttributesRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["Attributes"] = _Attributes,
	}
	asserts.AssertSetQueueAttributesRequest(t)
	return t
end

keys.GetQueueAttributesRequest = { ["QueueUrl"] = true, ["AttributeNames"] = true, nil }

function asserts.AssertGetQueueAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueAttributesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueAttributesRequest[k], "GetQueueAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueAttributesRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue whose attribute information is retrieved.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _AttributeNames [AttributeNameList] <p>A list of attributes for which to retrieve information.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note> <p>The following attributes are supported:</p> <ul> <li> <p> <code>All</code> - Returns all values. </p> </li> <li> <p> <code>ApproximateNumberOfMessages</code> - Returns the approximate number of visible messages in a queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html">Resources Required to Process Messages</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> - Returns the approximate number of messages that are waiting to be added to the queue. </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> - Returns the approximate number of messages that have not timed-out and aren't deleted. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html">Resources Required to Process Messages</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>CreatedTimestamp</code> - Returns the time when the queue was created in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).</p> </li> <li> <p> <code>DelaySeconds</code> - Returns the default delay on the queue in seconds.</p> </li> <li> <p> <code>LastModifiedTimestamp</code> - Returns the time when the queue was last changed in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).</p> </li> <li> <p> <code>MaximumMessageSize</code> - Returns the limit of how many bytes a message can contain before Amazon SQS rejects it.</p> </li> <li> <p> <code>MessageRetentionPeriod</code> - Returns the length of time, in seconds, for which Amazon SQS retains a message.</p> </li> <li> <p> <code>Policy</code> - Returns the policy of the queue.</p> </li> <li> <p> <code>QueueArn</code> - Returns the Amazon resource name (ARN) of the queue.</p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - Returns the length of time, in seconds, for which the <code>ReceiveMessage</code> action waits for a message to arrive. </p> </li> <li> <p> <code>RedrivePolicy</code> - Returns the parameters for dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>VisibilityTimeout</code> - Returns the visibility timeout for the queue. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - Returns the ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - Returns the length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> - Returns whether the queue is FIFO. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO Queue Logic</a> in the <i>Amazon SQS Developer Guide</i>.</p> <note> <p>To determine whether a queue is <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note> </li> <li> <p> <code>ContentBasedDeduplication</code> - Returns whether content-based deduplication is enabled for the queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> </ul>
-- Required parameter: QueueUrl
function M.GetQueueAttributesRequest(_QueueUrl, _AttributeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueAttributesRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["AttributeNames"] = _AttributeNames,
	}
	asserts.AssertGetQueueAttributesRequest(t)
	return t
end

keys.SendMessageBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertSendMessageBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then asserts.AssertSendMessageBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchResult[k], "SendMessageBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchResult
-- <p>For each message in the batch, the response contains a <code> <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
-- @param _Successful [SendMessageBatchResultEntryList] <p>A list of <code> <a>SendMessageBatchResultEntry</a> </code> items.</p>
-- @param _Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items with error details about each message that can't be enqueued.</p>
-- Required parameter: Successful
-- Required parameter: Failed
function M.SendMessageBatchResult(_Successful, _Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchResult")
	local t = { 
		["Successful"] = _Successful,
		["Failed"] = _Failed,
	}
	asserts.AssertSendMessageBatchResult(t)
	return t
end

keys.CreateQueueRequest = { ["Attributes"] = true, ["QueueName"] = true, nil }

function asserts.AssertCreateQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueRequest to be of type 'table'")
	assert(struct["QueueName"], "Expected key QueueName to exist in table")
	if struct["Attributes"] then asserts.AssertQueueAttributeMap(struct["Attributes"]) end
	if struct["QueueName"] then asserts.AssertString(struct["QueueName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQueueRequest[k], "CreateQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueRequest
-- <p/>
-- @param _Attributes [QueueAttributeMap] <p>A map of attributes with their corresponding values.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>CreateQueue</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 seconds (15 minutes). The default is 0 (zero). </p> </li> <li> <p> <code>MaximumMessageSize</code> - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer from 60 seconds (1 minute) to 1,209,600 seconds (14 days). The default is 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> - The queue's policy. A valid AWS policy. For more information about policy structure, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). The default is 0 (zero). </p> </li> <li> <p> <code>RedrivePolicy</code> - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> <note> <p>The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> - The visibility timeout for the queue. Valid values: An integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/aws/sqs</code>. For more examples, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in seconds, for which Amazon SQS can reuse a <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> - Designates a queue as FIFO. Valid values: <code>true</code>, <code>false</code>. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the <code>MessageGroupId</code> for your messages explicitly.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO Queue Logic</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> <li> <p> <code>ContentBasedDeduplication</code> - Enables content-based deduplication. Valid values: <code>true</code>, <code>false</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>QueueArn</code> </p> </li> </ul>
-- @param _QueueName [String] <p>The name of the new queue. The following limits apply to this name:</p> <ul> <li> <p>A queue name can have up to 80 characters.</p> </li> <li> <p>Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> </li> <li> <p>A FIFO queue name must end with the <code>.fifo</code> suffix.</p> </li> </ul> <p>Queue names are case-sensitive.</p>
-- Required parameter: QueueName
function M.CreateQueueRequest(_Attributes, _QueueName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQueueRequest")
	local t = { 
		["Attributes"] = _Attributes,
		["QueueName"] = _QueueName,
	}
	asserts.AssertCreateQueueRequest(t)
	return t
end

keys.RemovePermissionRequest = { ["QueueUrl"] = true, ["Label"] = true, nil }

function asserts.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Label"] then asserts.AssertString(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemovePermissionRequest[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue from which permissions are removed.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _Label [String] <p>The identification of the permission to remove. This is the label added using the <code> <a>AddPermission</a> </code> action.</p>
-- Required parameter: QueueUrl
-- Required parameter: Label
function M.RemovePermissionRequest(_QueueUrl, _Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemovePermissionRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["Label"] = _Label,
	}
	asserts.AssertRemovePermissionRequest(t)
	return t
end

keys.DeleteMessageBatchRequestEntry = { ["ReceiptHandle"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteMessageBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchRequestEntry[k], "DeleteMessageBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchRequestEntry
-- <p>Encloses a receipt handle and an identifier for it.</p>
-- @param _ReceiptHandle [String] <p>A receipt handle.</p>
-- @param _Id [String] <p>An identifier for this particular receipt handle. This is used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- Required parameter: Id
-- Required parameter: ReceiptHandle
function M.DeleteMessageBatchRequestEntry(_ReceiptHandle, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchRequestEntry")
	local t = { 
		["ReceiptHandle"] = _ReceiptHandle,
		["Id"] = _Id,
	}
	asserts.AssertDeleteMessageBatchRequestEntry(t)
	return t
end

keys.SendMessageBatchRequest = { ["QueueUrl"] = true, ["Entries"] = true, nil }

function asserts.AssertSendMessageBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then asserts.AssertSendMessageBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchRequest[k], "SendMessageBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue to which batched messages are sent.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _Entries [SendMessageBatchRequestEntryList] <p>A list of <code> <a>SendMessageBatchRequestEntry</a> </code> items.</p>
-- Required parameter: QueueUrl
-- Required parameter: Entries
function M.SendMessageBatchRequest(_QueueUrl, _Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["Entries"] = _Entries,
	}
	asserts.AssertSendMessageBatchRequest(t)
	return t
end

keys.ChangeMessageVisibilityBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then asserts.AssertChangeMessageVisibilityBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchResult[k], "ChangeMessageVisibilityBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchResult
-- <p>For each message in the batch, the response contains a <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
-- @param _Successful [ChangeMessageVisibilityBatchResultEntryList] <p>A list of <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> items.</p>
-- @param _Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>
-- Required parameter: Successful
-- Required parameter: Failed
function M.ChangeMessageVisibilityBatchResult(_Successful, _Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchResult")
	local t = { 
		["Successful"] = _Successful,
		["Failed"] = _Failed,
	}
	asserts.AssertChangeMessageVisibilityBatchResult(t)
	return t
end

keys.CreateQueueResult = { ["QueueUrl"] = true, nil }

function asserts.AssertCreateQueueResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueResult to be of type 'table'")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQueueResult[k], "CreateQueueResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueResult
-- <p>Returns the <code>QueueUrl</code> attribute of the created queue.</p>
-- @param _QueueUrl [String] <p>The URL of the created Amazon SQS queue.</p>
function M.CreateQueueResult(_QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQueueResult")
	local t = { 
		["QueueUrl"] = _QueueUrl,
	}
	asserts.AssertCreateQueueResult(t)
	return t
end

keys.PurgeQueueRequest = { ["QueueUrl"] = true, nil }

function asserts.AssertPurgeQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurgeQueueRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurgeQueueRequest[k], "PurgeQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurgeQueueRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the queue from which the <code>PurgeQueue</code> action deletes messages.</p> <p>Queue URLs are case-sensitive.</p>
-- Required parameter: QueueUrl
function M.PurgeQueueRequest(_QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurgeQueueRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
	}
	asserts.AssertPurgeQueueRequest(t)
	return t
end

keys.ReceiptHandleIsInvalid = { nil }

function asserts.AssertReceiptHandleIsInvalid(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptHandleIsInvalid to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReceiptHandleIsInvalid[k], "ReceiptHandleIsInvalid contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptHandleIsInvalid
-- <p>The receipt handle provided isn't valid.</p>
function M.ReceiptHandleIsInvalid(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptHandleIsInvalid")
	local t = { 
	}
	asserts.AssertReceiptHandleIsInvalid(t)
	return t
end

keys.InvalidAttributeName = { nil }

function asserts.AssertInvalidAttributeName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAttributeName to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidAttributeName[k], "InvalidAttributeName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAttributeName
-- <p>The attribute referred to doesn't exist.</p>
function M.InvalidAttributeName(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAttributeName")
	local t = { 
	}
	asserts.AssertInvalidAttributeName(t)
	return t
end

keys.ChangeMessageVisibilityBatchRequest = { ["QueueUrl"] = true, ["Entries"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then asserts.AssertChangeMessageVisibilityBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchRequest[k], "ChangeMessageVisibilityBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue whose messages' visibility is changed.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _Entries [ChangeMessageVisibilityBatchRequestEntryList] <p>A list of receipt handles of the messages for which the visibility timeout must be changed.</p>
-- Required parameter: QueueUrl
-- Required parameter: Entries
function M.ChangeMessageVisibilityBatchRequest(_QueueUrl, _Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["Entries"] = _Entries,
	}
	asserts.AssertChangeMessageVisibilityBatchRequest(t)
	return t
end

keys.ReceiveMessageRequest = { ["QueueUrl"] = true, ["ReceiveRequestAttemptId"] = true, ["MaxNumberOfMessages"] = true, ["WaitTimeSeconds"] = true, ["MessageAttributeNames"] = true, ["VisibilityTimeout"] = true, ["AttributeNames"] = true, nil }

function asserts.AssertReceiveMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiveMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["ReceiveRequestAttemptId"] then asserts.AssertString(struct["ReceiveRequestAttemptId"]) end
	if struct["MaxNumberOfMessages"] then asserts.AssertInteger(struct["MaxNumberOfMessages"]) end
	if struct["WaitTimeSeconds"] then asserts.AssertInteger(struct["WaitTimeSeconds"]) end
	if struct["MessageAttributeNames"] then asserts.AssertMessageAttributeNameList(struct["MessageAttributeNames"]) end
	if struct["VisibilityTimeout"] then asserts.AssertInteger(struct["VisibilityTimeout"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiveMessageRequest[k], "ReceiveMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiveMessageRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are received.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _ReceiveRequestAttemptId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of <code>ReceiveMessage</code> calls. If a networking issue occurs after a <code>ReceiveMessage</code> action, and instead of a response you receive a generic error, you can retry the same action with an identical <code>ReceiveRequestAttemptId</code> to retrieve the same set of messages, even if their visibility timeout has not yet expired.</p> <ul> <li> <p>You can use <code>ReceiveRequestAttemptId</code> only for 5 minutes after a <code>ReceiveMessage</code> action.</p> </li> <li> <p>When you set <code>FifoQueue</code>, a caller of the <code>ReceiveMessage</code> action can provide a <code>ReceiveRequestAttemptId</code> explicitly.</p> </li> <li> <p>If a caller of the <code>ReceiveMessage</code> action doesn't provide a <code>ReceiveRequestAttemptId</code>, Amazon SQS generates a <code>ReceiveRequestAttemptId</code>.</p> </li> <li> <p>You can retry the <code>ReceiveMessage</code> action with the same <code>ReceiveRequestAttemptId</code> if none of the messages have been modified (deleted or had their visibility changes).</p> </li> <li> <p>During a visibility timeout, subsequent calls with the same <code>ReceiveRequestAttemptId</code> return the same messages and receipt handles. If a retry occurs within the deduplication interval, it resets the visibility timeout. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p>If a caller of the <code>ReceiveMessage</code> action is still processing messages when the visibility timeout expires and messages become visible, another worker reading from the same queue can receive the same messages and therefore process duplicates. Also, if a reader whose message processing time is longer than the visibility timeout tries to delete the processed messages, the action fails with an error.</p> <p>To mitigate this effect, ensure that your application observes a safe threshold before the visibility timeout expires and extend the visibility timeout as necessary.</p> </important> </li> <li> <p>While messages with a particular <code>MessageGroupId</code> are invisible, no more messages belonging to the same <code>MessageGroupId</code> are returned until the visibility timeout expires. You can still receive messages with another <code>MessageGroupId</code> as long as it is also visible.</p> </li> <li> <p>If a caller of <code>ReceiveMessage</code> can't track the <code>ReceiveRequestAttemptId</code>, no retries work until the original visibility timeout expires. As a result, delays might occur but the messages in the queue remain in a strict order.</p> </li> </ul> <p>The length of <code>ReceiveRequestAttemptId</code> is 128 characters. <code>ReceiveRequestAttemptId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>ReceiveRequestAttemptId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter">Using the ReceiveRequestAttemptId Request Parameter</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- @param _MaxNumberOfMessages [Integer] <p>The maximum number of messages to return. Amazon SQS never returns more messages than this value (however, fewer messages might be returned). Valid values are 1 to 10. Default is 1.</p>
-- @param _WaitTimeSeconds [Integer] <p>The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. If a message is available, the call returns sooner than <code>WaitTimeSeconds</code>.</p>
-- @param _MessageAttributeNames [MessageAttributeNameList] <p>The name of the message attribute, where <i>N</i> is the index.</p> <ul> <li> <p>The name can contain alphanumeric characters and the underscore (<code>_</code>), hyphen (<code>-</code>), and period (<code>.</code>).</p> </li> <li> <p>The name is case-sensitive and must be unique among all attribute names for the message.</p> </li> <li> <p>The name must not start with AWS-reserved prefixes such as <code>AWS.</code> or <code>Amazon.</code> (or any casing variants).</p> </li> <li> <p>The name must not start or end with a period (<code>.</code>), and it should not have periods in succession (<code>..</code>).</p> </li> <li> <p>The name can be up to 256 characters long.</p> </li> </ul> <p>When using <code>ReceiveMessage</code>, you can send a list of attribute names to receive, or you can return all of the attributes by specifying <code>All</code> or <code>.*</code> in your request. You can also use all message attributes starting with a prefix, for example <code>bar.*</code>.</p>
-- @param _VisibilityTimeout [Integer] <p>The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being retrieved by a <code>ReceiveMessage</code> request.</p>
-- @param _AttributeNames [AttributeNameList] <p>A list of attributes that need to be returned along with each message. These attributes include:</p> <ul> <li> <p> <code>All</code> - Returns all values.</p> </li> <li> <p> <code>ApproximateFirstReceiveTimestamp</code> - Returns the time the message was first received from the queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>ApproximateReceiveCount</code> - Returns the number of times a message has been received from the queue but not deleted.</p> </li> <li> <p> <code>SenderId</code> </p> <ul> <li> <p>For an IAM user, returns the IAM user ID, for example <code>ABCDEFGHI1JKLMNOPQ23R</code>.</p> </li> <li> <p>For an IAM role, returns the IAM role ID, for example <code>ABCDE1F2GH3I4JK5LMNOP:i-a123b456</code>.</p> </li> </ul> </li> <li> <p> <code>SentTimestamp</code> - Returns the time the message was sent to the queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>MessageDeduplicationId</code> - Returns the value provided by the sender that calls the <code> <a>SendMessage</a> </code> action.</p> </li> <li> <p> <code>MessageGroupId</code> - Returns the value provided by the sender that calls the <code> <a>SendMessage</a> </code> action. Messages with the same <code>MessageGroupId</code> are returned in sequence.</p> </li> <li> <p> <code>SequenceNumber</code> - Returns the value provided by Amazon SQS.</p> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>ContentBasedDeduplication</code> </p> </li> <li> <p> <code>DelaySeconds</code> </p> </li> <li> <p> <code>FifoQueue</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>MaximumMessageSize</code> </p> </li> <li> <p> <code>MessageRetentionPeriod</code> </p> </li> <li> <p> <code>Policy</code> </p> </li> <li> <p> <code>QueueArn</code>, </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> </p> </li> <li> <p> <code>RedrivePolicy</code> </p> </li> <li> <p> <code>VisibilityTimeout</code> </p> </li> </ul>
-- Required parameter: QueueUrl
function M.ReceiveMessageRequest(_QueueUrl, _ReceiveRequestAttemptId, _MaxNumberOfMessages, _WaitTimeSeconds, _MessageAttributeNames, _VisibilityTimeout, _AttributeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiveMessageRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["ReceiveRequestAttemptId"] = _ReceiveRequestAttemptId,
		["MaxNumberOfMessages"] = _MaxNumberOfMessages,
		["WaitTimeSeconds"] = _WaitTimeSeconds,
		["MessageAttributeNames"] = _MessageAttributeNames,
		["VisibilityTimeout"] = _VisibilityTimeout,
		["AttributeNames"] = _AttributeNames,
	}
	asserts.AssertReceiveMessageRequest(t)
	return t
end

keys.ReceiveMessageResult = { ["Messages"] = true, nil }

function asserts.AssertReceiveMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiveMessageResult to be of type 'table'")
	if struct["Messages"] then asserts.AssertMessageList(struct["Messages"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiveMessageResult[k], "ReceiveMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiveMessageResult
-- <p>A list of received messages.</p>
-- @param _Messages [MessageList] <p>A list of messages.</p>
function M.ReceiveMessageResult(_Messages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiveMessageResult")
	local t = { 
		["Messages"] = _Messages,
	}
	asserts.AssertReceiveMessageResult(t)
	return t
end

keys.SendMessageBatchResultEntry = { ["MD5OfMessageBody"] = true, ["MD5OfMessageAttributes"] = true, ["Id"] = true, ["SequenceNumber"] = true, ["MessageId"] = true, nil }

function asserts.AssertSendMessageBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	assert(struct["MD5OfMessageBody"], "Expected key MD5OfMessageBody to exist in table")
	if struct["MD5OfMessageBody"] then asserts.AssertString(struct["MD5OfMessageBody"]) end
	if struct["MD5OfMessageAttributes"] then asserts.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["SequenceNumber"] then asserts.AssertString(struct["SequenceNumber"]) end
	if struct["MessageId"] then asserts.AssertString(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchResultEntry[k], "SendMessageBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchResultEntry
-- <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>
-- @param _MD5OfMessageBody [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param _MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param _Id [String] <p>An identifier for the message in this batch.</p>
-- @param _SequenceNumber [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. As <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
-- @param _MessageId [String] <p>An identifier for the message.</p>
-- Required parameter: Id
-- Required parameter: MessageId
-- Required parameter: MD5OfMessageBody
function M.SendMessageBatchResultEntry(_MD5OfMessageBody, _MD5OfMessageAttributes, _Id, _SequenceNumber, _MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchResultEntry")
	local t = { 
		["MD5OfMessageBody"] = _MD5OfMessageBody,
		["MD5OfMessageAttributes"] = _MD5OfMessageAttributes,
		["Id"] = _Id,
		["SequenceNumber"] = _SequenceNumber,
		["MessageId"] = _MessageId,
	}
	asserts.AssertSendMessageBatchResultEntry(t)
	return t
end

keys.InvalidBatchEntryId = { nil }

function asserts.AssertInvalidBatchEntryId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBatchEntryId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBatchEntryId[k], "InvalidBatchEntryId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBatchEntryId
-- <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification.</p>
function M.InvalidBatchEntryId(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBatchEntryId")
	local t = { 
	}
	asserts.AssertInvalidBatchEntryId(t)
	return t
end

keys.ChangeMessageVisibilityRequest = { ["QueueUrl"] = true, ["ReceiptHandle"] = true, ["VisibilityTimeout"] = true, nil }

function asserts.AssertChangeMessageVisibilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	assert(struct["VisibilityTimeout"], "Expected key VisibilityTimeout to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["VisibilityTimeout"] then asserts.AssertInteger(struct["VisibilityTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityRequest[k], "ChangeMessageVisibilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityRequest
--  
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue whose message's visibility is changed.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _ReceiptHandle [String] <p>The receipt handle associated with the message whose visibility timeout is changed. This parameter is returned by the <code> <a>ReceiveMessage</a> </code> action.</p>
-- @param _VisibilityTimeout [Integer] <p>The new value for the message's visibility timeout (in seconds). Values values: <code>0</code> to <code>43200</code>. Maximum: 12 hours.</p>
-- Required parameter: QueueUrl
-- Required parameter: ReceiptHandle
-- Required parameter: VisibilityTimeout
function M.ChangeMessageVisibilityRequest(_QueueUrl, _ReceiptHandle, _VisibilityTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["ReceiptHandle"] = _ReceiptHandle,
		["VisibilityTimeout"] = _VisibilityTimeout,
	}
	asserts.AssertChangeMessageVisibilityRequest(t)
	return t
end

keys.BatchResultErrorEntry = { ["Message"] = true, ["SenderFault"] = true, ["Code"] = true, ["Id"] = true, nil }

function asserts.AssertBatchResultErrorEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchResultErrorEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["SenderFault"], "Expected key SenderFault to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SenderFault"] then asserts.AssertBoolean(struct["SenderFault"]) end
	if struct["Code"] then asserts.AssertString(struct["Code"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchResultErrorEntry[k], "BatchResultErrorEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchResultErrorEntry
-- <p>This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.</p>
-- @param _Message [String] <p>A message explaining why the action failed on this entry.</p>
-- @param _SenderFault [Boolean] <p>Specifies whether the error happened due to the sender's fault.</p>
-- @param _Code [String] <p>An error code representing why the action failed on this entry.</p>
-- @param _Id [String] <p>The <code>Id</code> of an entry in a batch request.</p>
-- Required parameter: Id
-- Required parameter: SenderFault
-- Required parameter: Code
function M.BatchResultErrorEntry(_Message, _SenderFault, _Code, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchResultErrorEntry")
	local t = { 
		["Message"] = _Message,
		["SenderFault"] = _SenderFault,
		["Code"] = _Code,
		["Id"] = _Id,
	}
	asserts.AssertBatchResultErrorEntry(t)
	return t
end

keys.SendMessageResult = { ["MD5OfMessageBody"] = true, ["MD5OfMessageAttributes"] = true, ["SequenceNumber"] = true, ["MessageId"] = true, nil }

function asserts.AssertSendMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageResult to be of type 'table'")
	if struct["MD5OfMessageBody"] then asserts.AssertString(struct["MD5OfMessageBody"]) end
	if struct["MD5OfMessageAttributes"] then asserts.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["SequenceNumber"] then asserts.AssertString(struct["SequenceNumber"]) end
	if struct["MessageId"] then asserts.AssertString(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageResult[k], "SendMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageResult
-- <p>The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.</p>
-- @param _MD5OfMessageBody [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param _MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param _SequenceNumber [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
-- @param _MessageId [String] <p>An attribute containing the <code>MessageId</code> of the message sent to the queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue and Message Identifiers</a> in the <i>Amazon SQS Developer Guide</i>. </p>
function M.SendMessageResult(_MD5OfMessageBody, _MD5OfMessageAttributes, _SequenceNumber, _MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageResult")
	local t = { 
		["MD5OfMessageBody"] = _MD5OfMessageBody,
		["MD5OfMessageAttributes"] = _MD5OfMessageAttributes,
		["SequenceNumber"] = _SequenceNumber,
		["MessageId"] = _MessageId,
	}
	asserts.AssertSendMessageResult(t)
	return t
end

keys.DeleteMessageBatchRequest = { ["QueueUrl"] = true, ["Entries"] = true, nil }

function asserts.AssertDeleteMessageBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then asserts.AssertDeleteMessageBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchRequest[k], "DeleteMessageBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _Entries [DeleteMessageBatchRequestEntryList] <p>A list of receipt handles for the messages to be deleted.</p>
-- Required parameter: QueueUrl
-- Required parameter: Entries
function M.DeleteMessageBatchRequest(_QueueUrl, _Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["Entries"] = _Entries,
	}
	asserts.AssertDeleteMessageBatchRequest(t)
	return t
end

keys.QueueDoesNotExist = { nil }

function asserts.AssertQueueDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueDoesNotExist to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.QueueDoesNotExist[k], "QueueDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueDoesNotExist
-- <p>The queue referred to doesn't exist.</p>
function M.QueueDoesNotExist(...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueDoesNotExist")
	local t = { 
	}
	asserts.AssertQueueDoesNotExist(t)
	return t
end

keys.SendMessageRequest = { ["QueueUrl"] = true, ["MessageDeduplicationId"] = true, ["MessageBody"] = true, ["DelaySeconds"] = true, ["MessageAttributes"] = true, ["MessageGroupId"] = true, nil }

function asserts.AssertSendMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["MessageDeduplicationId"] then asserts.AssertString(struct["MessageDeduplicationId"]) end
	if struct["MessageBody"] then asserts.AssertString(struct["MessageBody"]) end
	if struct["DelaySeconds"] then asserts.AssertInteger(struct["DelaySeconds"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	if struct["MessageGroupId"] then asserts.AssertString(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageRequest[k], "SendMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue to which a message is sent.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _MessageDeduplicationId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of sent messages. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, any messages sent with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing"> Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the recipient of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- @param _MessageBody [String] <p>The message to send. The maximum string size is 256 KB.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important>
-- @param _DelaySeconds [Integer] <p> The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>
-- @param _MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param _MessageGroupId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values are alphanumeric characters and punctuation <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>
-- Required parameter: QueueUrl
-- Required parameter: MessageBody
function M.SendMessageRequest(_QueueUrl, _MessageDeduplicationId, _MessageBody, _DelaySeconds, _MessageAttributes, _MessageGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["MessageDeduplicationId"] = _MessageDeduplicationId,
		["MessageBody"] = _MessageBody,
		["DelaySeconds"] = _DelaySeconds,
		["MessageAttributes"] = _MessageAttributes,
		["MessageGroupId"] = _MessageGroupId,
	}
	asserts.AssertSendMessageRequest(t)
	return t
end

keys.MessageNotInflight = { nil }

function asserts.AssertMessageNotInflight(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageNotInflight to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MessageNotInflight[k], "MessageNotInflight contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageNotInflight
-- <p>The message referred to isn't in flight.</p>
function M.MessageNotInflight(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageNotInflight")
	local t = { 
	}
	asserts.AssertMessageNotInflight(t)
	return t
end

keys.GetQueueAttributesResult = { ["Attributes"] = true, nil }

function asserts.AssertGetQueueAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueAttributesResult to be of type 'table'")
	if struct["Attributes"] then asserts.AssertQueueAttributeMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueAttributesResult[k], "GetQueueAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueAttributesResult
-- <p>A list of returned queue attributes.</p>
-- @param _Attributes [QueueAttributeMap] <p>A map of attributes to their respective values.</p>
function M.GetQueueAttributesResult(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueAttributesResult")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertGetQueueAttributesResult(t)
	return t
end

keys.ListDeadLetterSourceQueuesRequest = { ["QueueUrl"] = true, nil }

function asserts.AssertListDeadLetterSourceQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeadLetterSourceQueuesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeadLetterSourceQueuesRequest[k], "ListDeadLetterSourceQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeadLetterSourceQueuesRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of a dead letter queue.</p> <p>Queue URLs are case-sensitive.</p>
-- Required parameter: QueueUrl
function M.ListDeadLetterSourceQueuesRequest(_QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeadLetterSourceQueuesRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
	}
	asserts.AssertListDeadLetterSourceQueuesRequest(t)
	return t
end

keys.Message = { ["Body"] = true, ["ReceiptHandle"] = true, ["MD5OfBody"] = true, ["MD5OfMessageAttributes"] = true, ["MessageId"] = true, ["Attributes"] = true, ["MessageAttributes"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	if struct["Body"] then asserts.AssertString(struct["Body"]) end
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["MD5OfBody"] then asserts.AssertString(struct["MD5OfBody"]) end
	if struct["MD5OfMessageAttributes"] then asserts.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["MessageId"] then asserts.AssertString(struct["MessageId"]) end
	if struct["Attributes"] then asserts.AssertMessageSystemAttributeMap(struct["Attributes"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- <p>An Amazon SQS message.</p>
-- @param _Body [String] <p>The message's contents (not URL-encoded).</p>
-- @param _ReceiptHandle [String] <p>An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.</p>
-- @param _MD5OfBody [String] <p>An MD5 digest of the non-URL-encoded message body string.</p>
-- @param _MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param _MessageId [String] <p>A unique identifier for the message. A <code>MessageId</code>is considered unique across all AWS accounts for an extended period of time.</p>
-- @param _Attributes [MessageSystemAttributeMap] <p> <code>SenderId</code>, <code>SentTimestamp</code>, <code>ApproximateReceiveCount</code>, and/or <code>ApproximateFirstReceiveTimestamp</code>. <code>SentTimestamp</code> and <code>ApproximateFirstReceiveTimestamp</code> are each returned as an integer representing the <a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds.</p>
-- @param _MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
function M.Message(_Body, _ReceiptHandle, _MD5OfBody, _MD5OfMessageAttributes, _MessageId, _Attributes, _MessageAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["Body"] = _Body,
		["ReceiptHandle"] = _ReceiptHandle,
		["MD5OfBody"] = _MD5OfBody,
		["MD5OfMessageAttributes"] = _MD5OfMessageAttributes,
		["MessageId"] = _MessageId,
		["Attributes"] = _Attributes,
		["MessageAttributes"] = _MessageAttributes,
	}
	asserts.AssertMessage(t)
	return t
end

keys.OverLimit = { nil }

function asserts.AssertOverLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OverLimit to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OverLimit[k], "OverLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OverLimit
-- <p>The action that you requested would violate a limit. For example, <code>ReceiveMessage</code> returns this error if the maximum number of inflight messages is reached. <code> <a>AddPermission</a> </code> returns this error if the maximum number of permissions for the queue is reached.</p>
function M.OverLimit(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OverLimit")
	local t = { 
	}
	asserts.AssertOverLimit(t)
	return t
end

keys.GetQueueUrlRequest = { ["QueueName"] = true, ["QueueOwnerAWSAccountId"] = true, nil }

function asserts.AssertGetQueueUrlRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueUrlRequest to be of type 'table'")
	assert(struct["QueueName"], "Expected key QueueName to exist in table")
	if struct["QueueName"] then asserts.AssertString(struct["QueueName"]) end
	if struct["QueueOwnerAWSAccountId"] then asserts.AssertString(struct["QueueOwnerAWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueUrlRequest[k], "GetQueueUrlRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueUrlRequest
-- <p/>
-- @param _QueueName [String] <p>The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> <p>Queue names are case-sensitive.</p>
-- @param _QueueOwnerAWSAccountId [String] <p>The AWS account ID of the account that created the queue.</p>
-- Required parameter: QueueName
function M.GetQueueUrlRequest(_QueueName, _QueueOwnerAWSAccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueUrlRequest")
	local t = { 
		["QueueName"] = _QueueName,
		["QueueOwnerAWSAccountId"] = _QueueOwnerAWSAccountId,
	}
	asserts.AssertGetQueueUrlRequest(t)
	return t
end

keys.GetQueueUrlResult = { ["QueueUrl"] = true, nil }

function asserts.AssertGetQueueUrlResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueUrlResult to be of type 'table'")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueUrlResult[k], "GetQueueUrlResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueUrlResult
-- <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html">Responses</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param _QueueUrl [String] <p>The URL of the queue.</p>
function M.GetQueueUrlResult(_QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueUrlResult")
	local t = { 
		["QueueUrl"] = _QueueUrl,
	}
	asserts.AssertGetQueueUrlResult(t)
	return t
end

keys.DeleteQueueRequest = { ["QueueUrl"] = true, nil }

function asserts.AssertDeleteQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQueueRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteQueueRequest[k], "DeleteQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQueueRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue to delete.</p> <p>Queue URLs are case-sensitive.</p>
-- Required parameter: QueueUrl
function M.DeleteQueueRequest(_QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteQueueRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
	}
	asserts.AssertDeleteQueueRequest(t)
	return t
end

keys.BatchRequestTooLong = { nil }

function asserts.AssertBatchRequestTooLong(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRequestTooLong to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchRequestTooLong[k], "BatchRequestTooLong contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRequestTooLong
-- <p>The length of all the messages put together is more than the limit.</p>
function M.BatchRequestTooLong(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchRequestTooLong")
	local t = { 
	}
	asserts.AssertBatchRequestTooLong(t)
	return t
end

keys.InvalidMessageContents = { nil }

function asserts.AssertInvalidMessageContents(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMessageContents to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidMessageContents[k], "InvalidMessageContents contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMessageContents
-- <p>The message contains characters outside the allowed set.</p>
function M.InvalidMessageContents(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMessageContents")
	local t = { 
	}
	asserts.AssertInvalidMessageContents(t)
	return t
end

keys.ListQueuesRequest = { ["QueueNamePrefix"] = true, nil }

function asserts.AssertListQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesRequest to be of type 'table'")
	if struct["QueueNamePrefix"] then asserts.AssertString(struct["QueueNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueuesRequest[k], "ListQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesRequest
-- <p/>
-- @param _QueueNamePrefix [String] <p>A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned.</p> <p>Queue names are case-sensitive.</p>
function M.ListQueuesRequest(_QueueNamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueuesRequest")
	local t = { 
		["QueueNamePrefix"] = _QueueNamePrefix,
	}
	asserts.AssertListQueuesRequest(t)
	return t
end

keys.InvalidIdFormat = { nil }

function asserts.AssertInvalidIdFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdFormat to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidIdFormat[k], "InvalidIdFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdFormat
-- <p>The receipt handle isn't valid for the current version.</p>
function M.InvalidIdFormat(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIdFormat")
	local t = { 
	}
	asserts.AssertInvalidIdFormat(t)
	return t
end

keys.AddPermissionRequest = { ["QueueUrl"] = true, ["AWSAccountIds"] = true, ["Actions"] = true, ["Label"] = true, nil }

function asserts.AssertAddPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	assert(struct["AWSAccountIds"], "Expected key AWSAccountIds to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["AWSAccountIds"] then asserts.AssertAWSAccountIdList(struct["AWSAccountIds"]) end
	if struct["Actions"] then asserts.AssertActionNameList(struct["Actions"]) end
	if struct["Label"] then asserts.AssertString(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionRequest[k], "AddPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue to which permissions are added.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _AWSAccountIds [AWSAccountIdList] <p>The AWS account number of the <a href="http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a> who is given permission. The principal must have an AWS account, but does not need to be signed up for Amazon SQS. For information about locating the AWS account identification, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html">Your AWS Identifiers</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param _Actions [ActionNameList] <p>The action the client wants to allow for the specified principal. The following values are valid:</p> <ul> <li> <p> <code>*</code> </p> </li> <li> <p> <code>ChangeMessageVisibility</code> </p> </li> <li> <p> <code>DeleteMessage</code> </p> </li> <li> <p> <code>GetQueueAttributes</code> </p> </li> <li> <p> <code>GetQueueUrl</code> </p> </li> <li> <p> <code>ReceiveMessage</code> </p> </li> <li> <p> <code>SendMessage</code> </p> </li> </ul> <p>For more information about these actions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes">Understanding Permissions</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>Specifying <code>SendMessage</code>, <code>DeleteMessage</code>, or <code>ChangeMessageVisibility</code> for <code>ActionName.n</code> also grants permissions for the corresponding batch versions of those actions: <code>SendMessageBatch</code>, <code>DeleteMessageBatch</code>, and <code>ChangeMessageVisibilityBatch</code>.</p>
-- @param _Label [String] <p>The unique identification of the permission you're setting (for example, <code>AliceSendMessage</code>). Maximum 80 characters. Allowed characters include alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p>
-- Required parameter: QueueUrl
-- Required parameter: Label
-- Required parameter: AWSAccountIds
-- Required parameter: Actions
function M.AddPermissionRequest(_QueueUrl, _AWSAccountIds, _Actions, _Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddPermissionRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["AWSAccountIds"] = _AWSAccountIds,
		["Actions"] = _Actions,
		["Label"] = _Label,
	}
	asserts.AssertAddPermissionRequest(t)
	return t
end

keys.ListDeadLetterSourceQueuesResult = { ["queueUrls"] = true, nil }

function asserts.AssertListDeadLetterSourceQueuesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeadLetterSourceQueuesResult to be of type 'table'")
	assert(struct["queueUrls"], "Expected key queueUrls to exist in table")
	if struct["queueUrls"] then asserts.AssertQueueUrlList(struct["queueUrls"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeadLetterSourceQueuesResult[k], "ListDeadLetterSourceQueuesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeadLetterSourceQueuesResult
-- <p>A list of your dead letter source queues.</p>
-- @param _queueUrls [QueueUrlList] <p>A list of source queue URLs that have the <code>RedrivePolicy</code> queue attribute configured with a dead letter queue.</p>
-- Required parameter: queueUrls
function M.ListDeadLetterSourceQueuesResult(_queueUrls, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeadLetterSourceQueuesResult")
	local t = { 
		["queueUrls"] = _queueUrls,
	}
	asserts.AssertListDeadLetterSourceQueuesResult(t)
	return t
end

keys.QueueNameExists = { nil }

function asserts.AssertQueueNameExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueNameExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.QueueNameExists[k], "QueueNameExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueNameExists
-- <p>A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.</p>
function M.QueueNameExists(...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueNameExists")
	local t = { 
	}
	asserts.AssertQueueNameExists(t)
	return t
end

keys.BatchEntryIdsNotDistinct = { nil }

function asserts.AssertBatchEntryIdsNotDistinct(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchEntryIdsNotDistinct to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchEntryIdsNotDistinct[k], "BatchEntryIdsNotDistinct contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchEntryIdsNotDistinct
-- <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
function M.BatchEntryIdsNotDistinct(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchEntryIdsNotDistinct")
	local t = { 
	}
	asserts.AssertBatchEntryIdsNotDistinct(t)
	return t
end

keys.DeleteMessageBatchResultEntry = { ["Id"] = true, nil }

function asserts.AssertDeleteMessageBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchResultEntry[k], "DeleteMessageBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchResultEntry
-- <p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>
-- @param _Id [String] <p>Represents a successfully deleted message.</p>
-- Required parameter: Id
function M.DeleteMessageBatchResultEntry(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchResultEntry")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertDeleteMessageBatchResultEntry(t)
	return t
end

keys.EmptyBatchRequest = { nil }

function asserts.AssertEmptyBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmptyBatchRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EmptyBatchRequest[k], "EmptyBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmptyBatchRequest
-- <p>The batch request doesn't contain any entries.</p>
function M.EmptyBatchRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmptyBatchRequest")
	local t = { 
	}
	asserts.AssertEmptyBatchRequest(t)
	return t
end

keys.ListQueuesResult = { ["QueueUrls"] = true, nil }

function asserts.AssertListQueuesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesResult to be of type 'table'")
	if struct["QueueUrls"] then asserts.AssertQueueUrlList(struct["QueueUrls"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueuesResult[k], "ListQueuesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesResult
-- <p>A list of your queues.</p>
-- @param _QueueUrls [QueueUrlList] <p>A list of queue URLs, up to 1,000 entries.</p>
function M.ListQueuesResult(_QueueUrls, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueuesResult")
	local t = { 
		["QueueUrls"] = _QueueUrls,
	}
	asserts.AssertListQueuesResult(t)
	return t
end

keys.SendMessageBatchRequestEntry = { ["MessageDeduplicationId"] = true, ["MessageBody"] = true, ["DelaySeconds"] = true, ["MessageAttributes"] = true, ["Id"] = true, ["MessageGroupId"] = true, nil }

function asserts.AssertSendMessageBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageDeduplicationId"] then asserts.AssertString(struct["MessageDeduplicationId"]) end
	if struct["MessageBody"] then asserts.AssertString(struct["MessageBody"]) end
	if struct["DelaySeconds"] then asserts.AssertInteger(struct["DelaySeconds"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["MessageGroupId"] then asserts.AssertString(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchRequestEntry[k], "SendMessageBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchRequestEntry
-- <p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>
-- @param _MessageDeduplicationId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, subsequent messages with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing"> Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the recipient of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- @param _MessageBody [String] <p>The body of the message.</p>
-- @param _DelaySeconds [Integer] <p>The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>
-- @param _MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param _Id [String] <p>An identifier for a message in this batch used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- @param _MessageGroupId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values are alphanumeric characters and punctuation <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>
-- Required parameter: Id
-- Required parameter: MessageBody
function M.SendMessageBatchRequestEntry(_MessageDeduplicationId, _MessageBody, _DelaySeconds, _MessageAttributes, _Id, _MessageGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchRequestEntry")
	local t = { 
		["MessageDeduplicationId"] = _MessageDeduplicationId,
		["MessageBody"] = _MessageBody,
		["DelaySeconds"] = _DelaySeconds,
		["MessageAttributes"] = _MessageAttributes,
		["Id"] = _Id,
		["MessageGroupId"] = _MessageGroupId,
	}
	asserts.AssertSendMessageBatchRequestEntry(t)
	return t
end

keys.ChangeMessageVisibilityBatchRequestEntry = { ["ReceiptHandle"] = true, ["VisibilityTimeout"] = true, ["Id"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["VisibilityTimeout"] then asserts.AssertInteger(struct["VisibilityTimeout"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchRequestEntry[k], "ChangeMessageVisibilityBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchRequestEntry
-- <p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=&lt;replaceable&gt;Your_Receipt_Handle&lt;/replaceable&gt;</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>
-- @param _ReceiptHandle [String] <p>A receipt handle.</p>
-- @param _VisibilityTimeout [Integer] <p>The new value (in seconds) for the message's visibility timeout.</p>
-- @param _Id [String] <p>An identifier for this particular receipt handle used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- Required parameter: Id
-- Required parameter: ReceiptHandle
function M.ChangeMessageVisibilityBatchRequestEntry(_ReceiptHandle, _VisibilityTimeout, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchRequestEntry")
	local t = { 
		["ReceiptHandle"] = _ReceiptHandle,
		["VisibilityTimeout"] = _VisibilityTimeout,
		["Id"] = _Id,
	}
	asserts.AssertChangeMessageVisibilityBatchRequestEntry(t)
	return t
end

keys.TooManyEntriesInBatchRequest = { nil }

function asserts.AssertTooManyEntriesInBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyEntriesInBatchRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyEntriesInBatchRequest[k], "TooManyEntriesInBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyEntriesInBatchRequest
-- <p>The batch request contains more entries than permissible.</p>
function M.TooManyEntriesInBatchRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyEntriesInBatchRequest")
	local t = { 
	}
	asserts.AssertTooManyEntriesInBatchRequest(t)
	return t
end

keys.QueueDeletedRecently = { nil }

function asserts.AssertQueueDeletedRecently(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueDeletedRecently to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.QueueDeletedRecently[k], "QueueDeletedRecently contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueDeletedRecently
-- <p>You must wait 60 seconds after deleting a queue before you can create another one with the same name.</p>
function M.QueueDeletedRecently(...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueDeletedRecently")
	local t = { 
	}
	asserts.AssertQueueDeletedRecently(t)
	return t
end

keys.DeleteMessageBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertDeleteMessageBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then asserts.AssertDeleteMessageBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchResult[k], "DeleteMessageBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchResult
-- <p>For each message in the batch, the response contains a <code> <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be deleted.</p>
-- @param _Successful [DeleteMessageBatchResultEntryList] <p>A list of <code> <a>DeleteMessageBatchResultEntry</a> </code> items.</p>
-- @param _Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>
-- Required parameter: Successful
-- Required parameter: Failed
function M.DeleteMessageBatchResult(_Successful, _Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchResult")
	local t = { 
		["Successful"] = _Successful,
		["Failed"] = _Failed,
	}
	asserts.AssertDeleteMessageBatchResult(t)
	return t
end

keys.ChangeMessageVisibilityBatchResultEntry = { ["Id"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchResultEntry[k], "ChangeMessageVisibilityBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchResultEntry
-- <p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>
-- @param _Id [String] <p>Represents a message whose visibility timeout has been changed successfully.</p>
-- Required parameter: Id
function M.ChangeMessageVisibilityBatchResultEntry(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchResultEntry")
	local t = { 
		["Id"] = _Id,
	}
	asserts.AssertChangeMessageVisibilityBatchResultEntry(t)
	return t
end

keys.DeleteMessageRequest = { ["QueueUrl"] = true, ["ReceiptHandle"] = true, nil }

function asserts.AssertDeleteMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageRequest[k], "DeleteMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageRequest
-- <p/>
-- @param _QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs are case-sensitive.</p>
-- @param _ReceiptHandle [String] <p>The receipt handle associated with the message to delete.</p>
-- Required parameter: QueueUrl
-- Required parameter: ReceiptHandle
function M.DeleteMessageRequest(_QueueUrl, _ReceiptHandle, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageRequest")
	local t = { 
		["QueueUrl"] = _QueueUrl,
		["ReceiptHandle"] = _ReceiptHandle,
	}
	asserts.AssertDeleteMessageRequest(t)
	return t
end

function asserts.AssertQueueAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueAttributeName to be of type 'string'")
end

--  
function M.QueueAttributeName(str)
	asserts.AssertQueueAttributeName(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertMessageAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageAttributeName to be of type 'string'")
end

--  
function M.MessageAttributeName(str)
	asserts.AssertMessageAttributeName(str)
	return str
end

function asserts.AssertMessageSystemAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageSystemAttributeName to be of type 'string'")
end

--  
function M.MessageSystemAttributeName(str)
	asserts.AssertMessageSystemAttributeName(str)
	return str
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertQueueAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected QueueAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertQueueAttributeName(k)
		asserts.AssertString(v)
	end
end

function M.QueueAttributeMap(map)
	asserts.AssertQueueAttributeMap(map)
	return map
end

function asserts.AssertMessageSystemAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageSystemAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertMessageSystemAttributeName(k)
		asserts.AssertString(v)
	end
end

function M.MessageSystemAttributeMap(map)
	asserts.AssertMessageSystemAttributeMap(map)
	return map
end

function asserts.AssertMessageBodyAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageBodyAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMessageAttributeValue(v)
	end
end

function M.MessageBodyAttributeMap(map)
	asserts.AssertMessageBodyAttributeMap(map)
	return map
end

function asserts.AssertBinary(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Binary to be of type 'string'")
end

function M.Binary(blob)
	asserts.AssertBinary(blob)
	return blob
end

function asserts.AssertMessageAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageAttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessageAttributeName(v)
	end
end

--  
-- List of MessageAttributeName objects
function M.MessageAttributeNameList(list)
	asserts.AssertMessageAttributeNameList(list)
	return list
end

function asserts.AssertChangeMessageVisibilityBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeMessageVisibilityBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChangeMessageVisibilityBatchRequestEntry(v)
	end
end

--  
-- List of ChangeMessageVisibilityBatchRequestEntry objects
function M.ChangeMessageVisibilityBatchRequestEntryList(list)
	asserts.AssertChangeMessageVisibilityBatchRequestEntryList(list)
	return list
end

function asserts.AssertDeleteMessageBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMessageBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeleteMessageBatchResultEntry(v)
	end
end

--  
-- List of DeleteMessageBatchResultEntry objects
function M.DeleteMessageBatchResultEntryList(list)
	asserts.AssertDeleteMessageBatchResultEntryList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertBatchResultErrorEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchResultErrorEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchResultErrorEntry(v)
	end
end

--  
-- List of BatchResultErrorEntry objects
function M.BatchResultErrorEntryList(list)
	asserts.AssertBatchResultErrorEntryList(list)
	return list
end

function asserts.AssertChangeMessageVisibilityBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeMessageVisibilityBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChangeMessageVisibilityBatchResultEntry(v)
	end
end

--  
-- List of ChangeMessageVisibilityBatchResultEntry objects
function M.ChangeMessageVisibilityBatchResultEntryList(list)
	asserts.AssertChangeMessageVisibilityBatchResultEntryList(list)
	return list
end

function asserts.AssertBinaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected BinaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBinary(v)
	end
end

--  
-- List of Binary objects
function M.BinaryList(list)
	asserts.AssertBinaryList(list)
	return list
end

function asserts.AssertMessageList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessage(v)
	end
end

--  
-- List of Message objects
function M.MessageList(list)
	asserts.AssertMessageList(list)
	return list
end

function asserts.AssertSendMessageBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendMessageBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSendMessageBatchRequestEntry(v)
	end
end

--  
-- List of SendMessageBatchRequestEntry objects
function M.SendMessageBatchRequestEntryList(list)
	asserts.AssertSendMessageBatchRequestEntryList(list)
	return list
end

function asserts.AssertActionNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ActionNameList(list)
	asserts.AssertActionNameList(list)
	return list
end

function asserts.AssertAWSAccountIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AWSAccountIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AWSAccountIdList(list)
	asserts.AssertAWSAccountIdList(list)
	return list
end

function asserts.AssertQueueUrlList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueueUrlList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.QueueUrlList(list)
	asserts.AssertQueueUrlList(list)
	return list
end

function asserts.AssertSendMessageBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendMessageBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSendMessageBatchResultEntry(v)
	end
end

--  
-- List of SendMessageBatchResultEntry objects
function M.SendMessageBatchResultEntryList(list)
	asserts.AssertSendMessageBatchResultEntryList(list)
	return list
end

function asserts.AssertDeleteMessageBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMessageBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeleteMessageBatchRequestEntry(v)
	end
end

--  
-- List of DeleteMessageBatchRequestEntry objects
function M.DeleteMessageBatchRequestEntryList(list)
	asserts.AssertDeleteMessageBatchRequestEntryList(list)
	return list
end

function asserts.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueueAttributeName(v)
	end
end

--  
-- List of QueueAttributeName objects
function M.AttributeNameList(list)
	asserts.AssertAttributeNameList(list)
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
			return "sqs.amazonaws.com"
		end
	end
	local ss = { "sqs" }
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
--- Call CreateQueue asynchronously, invoking a callback when done
-- @param CreateQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateQueueAsync(CreateQueueRequest, cb)
	assert(CreateQueueRequest, "You must provide a CreateQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateQueueRequest
-- @return response
-- @return error_message
function M.CreateQueueSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateQueueAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueueAttributes asynchronously, invoking a callback when done
-- @param GetQueueAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueueAttributesAsync(GetQueueAttributesRequest, cb)
	assert(GetQueueAttributesRequest, "You must provide a GetQueueAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetQueueAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQueueAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueueAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueueAttributesRequest
-- @return response
-- @return error_message
function M.GetQueueAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueueAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetQueueAttributes asynchronously, invoking a callback when done
-- @param SetQueueAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetQueueAttributesAsync(SetQueueAttributesRequest, cb)
	assert(SetQueueAttributesRequest, "You must provide a SetQueueAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetQueueAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetQueueAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call SetQueueAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetQueueAttributesRequest
-- @return response
-- @return error_message
function M.SetQueueAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetQueueAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueueUrl asynchronously, invoking a callback when done
-- @param GetQueueUrlRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueueUrlAsync(GetQueueUrlRequest, cb)
	assert(GetQueueUrlRequest, "You must provide a GetQueueUrlRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetQueueUrl",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQueueUrlRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueueUrl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueueUrlRequest
-- @return response
-- @return error_message
function M.GetQueueUrlSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueueUrlAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMessageBatch asynchronously, invoking a callback when done
-- @param DeleteMessageBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMessageBatchAsync(DeleteMessageBatchRequest, cb)
	assert(DeleteMessageBatchRequest, "You must provide a DeleteMessageBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMessageBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMessageBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMessageBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMessageBatchRequest
-- @return response
-- @return error_message
function M.DeleteMessageBatchSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMessageBatchAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendMessageBatch asynchronously, invoking a callback when done
-- @param SendMessageBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessageBatchAsync(SendMessageBatchRequest, cb)
	assert(SendMessageBatchRequest, "You must provide a SendMessageBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendMessageBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendMessageBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call SendMessageBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendMessageBatchRequest
-- @return response
-- @return error_message
function M.SendMessageBatchSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendMessageBatchAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeadLetterSourceQueues asynchronously, invoking a callback when done
-- @param ListDeadLetterSourceQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeadLetterSourceQueuesAsync(ListDeadLetterSourceQueuesRequest, cb)
	assert(ListDeadLetterSourceQueuesRequest, "You must provide a ListDeadLetterSourceQueuesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDeadLetterSourceQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeadLetterSourceQueuesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeadLetterSourceQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeadLetterSourceQueuesRequest
-- @return response
-- @return error_message
function M.ListDeadLetterSourceQueuesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeadLetterSourceQueuesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangeMessageVisibility asynchronously, invoking a callback when done
-- @param ChangeMessageVisibilityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeMessageVisibilityAsync(ChangeMessageVisibilityRequest, cb)
	assert(ChangeMessageVisibilityRequest, "You must provide a ChangeMessageVisibilityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ChangeMessageVisibility",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ChangeMessageVisibilityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ChangeMessageVisibility synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangeMessageVisibilityRequest
-- @return response
-- @return error_message
function M.ChangeMessageVisibilitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangeMessageVisibilityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddPermission asynchronously, invoking a callback when done
-- @param AddPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionRequest, cb)
	assert(AddPermissionRequest, "You must provide a AddPermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddPermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call AddPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddPermissionRequest
-- @return response
-- @return error_message
function M.AddPermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddPermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangeMessageVisibilityBatch asynchronously, invoking a callback when done
-- @param ChangeMessageVisibilityBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeMessageVisibilityBatchAsync(ChangeMessageVisibilityBatchRequest, cb)
	assert(ChangeMessageVisibilityBatchRequest, "You must provide a ChangeMessageVisibilityBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ChangeMessageVisibilityBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ChangeMessageVisibilityBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ChangeMessageVisibilityBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangeMessageVisibilityBatchRequest
-- @return response
-- @return error_message
function M.ChangeMessageVisibilityBatchSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangeMessageVisibilityBatchAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendMessage asynchronously, invoking a callback when done
-- @param SendMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessageAsync(SendMessageRequest, cb)
	assert(SendMessageRequest, "You must provide a SendMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call SendMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendMessageRequest
-- @return response
-- @return error_message
function M.SendMessageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendMessageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteQueue asynchronously, invoking a callback when done
-- @param DeleteQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteQueueAsync(DeleteQueueRequest, cb)
	assert(DeleteQueueRequest, "You must provide a DeleteQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteQueueRequest
-- @return response
-- @return error_message
function M.DeleteQueueSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteQueueAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PurgeQueue asynchronously, invoking a callback when done
-- @param PurgeQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PurgeQueueAsync(PurgeQueueRequest, cb)
	assert(PurgeQueueRequest, "You must provide a PurgeQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PurgeQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PurgeQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PurgeQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurgeQueueRequest
-- @return response
-- @return error_message
function M.PurgeQueueSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurgeQueueAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReceiveMessage asynchronously, invoking a callback when done
-- @param ReceiveMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReceiveMessageAsync(ReceiveMessageRequest, cb)
	assert(ReceiveMessageRequest, "You must provide a ReceiveMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReceiveMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReceiveMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ReceiveMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReceiveMessageRequest
-- @return response
-- @return error_message
function M.ReceiveMessageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReceiveMessageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMessage asynchronously, invoking a callback when done
-- @param DeleteMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMessageAsync(DeleteMessageRequest, cb)
	assert(DeleteMessageRequest, "You must provide a DeleteMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMessageRequest
-- @return response
-- @return error_message
function M.DeleteMessageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMessageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListQueues asynchronously, invoking a callback when done
-- @param ListQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListQueuesAsync(ListQueuesRequest, cb)
	assert(ListQueuesRequest, "You must provide a ListQueuesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListQueuesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListQueuesRequest
-- @return response
-- @return error_message
function M.ListQueuesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListQueuesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemovePermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RemovePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemovePermissionRequest
-- @return response
-- @return error_message
function M.RemovePermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
