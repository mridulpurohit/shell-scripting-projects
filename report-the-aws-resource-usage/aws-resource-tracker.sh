#Vesion: v1
#
# This script will report the AWS resource usage
########################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets" >> resourceTracker
aws s3 ls >> resourceTracker

# list EC2 instances
echo "Print list of ec2 instances" >> resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# list lambda
echo "Print list of lambda functions" >> resourceTracker
aws lambda list-functions >> resourceTracker

# list IAM users
echo "Print list of IAM Users" >> resourceTracker
aws iam list-users >> resourceTracker