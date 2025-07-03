#!/bin/bash
AWS_REGION="us-east-1"
REPO_NAME="flask-api"
IMAGE_TAG="latest"
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
docker build -t $REPO_NAME . 
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

aws ecr describe-repositories --repository-names $REPO_NAME --region $AWS_REGION >/dev/null || aws ecr create-repository --repository-name $REPO_NAME --region $AWS_REGION

docker tag $REPO_NAME:latest $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO_NAME:$IMAGE_TAG
docker push $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO_NAME:$IMAGE_TAG
