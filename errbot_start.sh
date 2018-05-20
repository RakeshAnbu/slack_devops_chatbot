#!/bin/bash

if [ -z "$AWS_ACCESS_KEY" ]; then
echo "AWS_ACCESS_KEY env variable is not set, you will not be able to use AWS Plugin"
fi

if [ -z "$AWS_SECRET_KEY" ]; then
echo "AWS_SECRET_KEY env variable is not set, you will not be able to use AWS Plugin"
fi


if [ -f "/root/errbot/ec2_key.pem" ]
then
echo ""
else
echo "ec2_key file does not exist, you will not be able to use COMMAND Plugin"
fi

errbot
