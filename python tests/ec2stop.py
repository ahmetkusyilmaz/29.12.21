import boto3
ec2 = boto3.resource('ec2')
ec2.Instance('i-0f6490c4d57a609f5').stop()
