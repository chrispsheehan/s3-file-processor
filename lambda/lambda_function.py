import json
import boto3

def lambda_handler(event, context):
    print("Received event: " + json.dumps(event, indent=2))

    s3_client = boto3.client('s3')
    for record in event['Records']:
        bucket_name = record['s3']['bucket']['name']
        object_key = record['s3']['object']['key']
        event_type = record['eventName']
        event_time = record['eventTime']

        print(f"Bucket: {bucket_name}, Object Key: {object_key}, Event Type: {event_type}, Event Time: {event_time}")

        new_object_key = 'processed/' + object_key  # Change 'new-folder/' to the desired folder path
        copy_source = {'Bucket': bucket_name, 'Key': object_key}
        s3_client.copy_object(CopySource=copy_source, Bucket=bucket_name, Key=new_object_key)
        s3_client.delete_object(Bucket=bucket_name, Key=object_key)  # Delete the original object

    # Add your custom processing logic here

    return {
        'statusCode': 200,
        'body': json.dumps('Event processed successfully')
    }
