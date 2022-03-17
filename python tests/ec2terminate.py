import boto3
ec2 = boto3.resource('ec2')
ec2.Instance('i-0a820f56a36c4efa4').terminate()
