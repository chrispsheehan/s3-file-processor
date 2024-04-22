# s3-file-processor

Move file from /input to /processed folders in s3.

This enables some processing to happen in between those two steps.

## test in lambda console

- upload a file to `chrispsheehan-s3-file-processer`
- file key (in this case) is `input/test.txt`
- add the below payload to the test window and hit test

```json
{
  "Records": [
    {
      "eventVersion": "2.1",
      "eventSource": "aws:s3",
      "awsRegion": "eu-west-2",
      "eventTime": "2024-04-22T12:00:00.000Z",
      "eventName": "ObjectCreated:Put",
      "userIdentity": {
        "principalId": "AWS:your_user_id"
      },
      "requestParameters": {
        "sourceIPAddress": "your_source_IP_address"
      },
      "responseElements": {
        "x-amz-request-id": "your_request_id",
        "x-amz-id-2": "your_amz_id"
      },
      "s3": {
        "s3SchemaVersion": "1.0",
        "configurationId": "your_configuration_id",
        "bucket": {
          "name": "# ",
          "ownerIdentity": {
            "principalId": "your_principal_id"
          },
          "arn": "arn:aws:s3:::chrispsheehan-s3-file-processer"
        },
        "object": {
          "key": "input/test.txt",
          "size": 1,
          "eTag": "your_object_ETag",
          "sequencer": "your_sequencer"
        }
      }
    }
  ]
}
```