# s3-file-processor

test

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
          "name": "chrispsheehan-s3-file-processer-input",
          "ownerIdentity": {
            "principalId": "your_principal_id"
          },
          "arn": "arn:aws:s3:::chrispsheehan-s3-file-processer-input"
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