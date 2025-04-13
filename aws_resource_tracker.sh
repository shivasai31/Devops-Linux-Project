#!/bin/bash

#######################
# AUTHOR: SHIVA SAI RENIKUNTA
# DATE: 13-04-2025
# VERSION: V1.0.0
# SHELL SCRIPT TO TRACK THE AWS RESOURCES USAGE VIA AWS CLI
#########################
set -x # debug mode
set -e # this will helps in terminating the script when an error occured while excuting any of the commands
set -o pipefail # this helps in terminating the script where pipe operator throws an error


#AWS EC2
#AWS IAM
#AWS S3
#AWS LAMBDA

echo "Listing S3"
aws s3 ls

echo "Listing IAM users"
aws iam list-users

echo "Listing aws ec2 instances which prints instance's ID"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Listing lamda functions"
aws lamda list-functions


# we can integrate this script to CRON tab where it will be run at certain time in a day to track the details.
