#!/bin/bash

####################################
# Author : Shamlin
# Date   : 26th Aug 2025

# Version: V1
# This script reports the AWS usage
####################################

set -x 

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# List S3 Buckets
echo "List of S3 Buckets -------------------------------------------"
aws s3 ls

# List EC2 Instances
echo "List of EC2 Instances ----------------------------------------"
aws ec2 describe-instances | jq 'Reservations[].Intances[].InstanceId'
# jq --> JSON processor for Linux

# List lambda
echo "List of Lambda Functions -------------------------------------"
aws lambda list-functions

# List IAM Users
echo "List of IAM Users  -------------------------------------------"
aws iam list-users
