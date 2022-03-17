import boto3

# Use Amazon S3
s3 = boto3.resource('s3')

# Upload a new file
data = open('test.txt', 'rb')
s3.Bucket('murat-test-bucket2').put_object(Key='test.txt', Body=data)
