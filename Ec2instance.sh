#!/bin/bash

# AWS EC2 configuration

AMI_ID="ami-0ecc74eca1d66d8a6"
INSTANCE_TYPE="t2.micro"

KEY_NAME="my_id_rsa"



# EC2 instance creation
INSTANCE_ID=$(aws ec2 run-instances  --image-id $AMI_ID --instance-type $INSTANCE_TYPE --key-name $KEY_NAME  --output text)

echo "EC2 instance with ID $INSTANCE_ID is being created."

# Wait until the instance is running

echo "EC2 instance with ID $INSTANCE_ID is now running."
