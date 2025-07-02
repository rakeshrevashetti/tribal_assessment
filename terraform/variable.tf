variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
  default     = "tribal-ecs-cluster"
}

variable "task_exec_role_arn" {
  description = "IAM Role ARN for ECS task execution"
  type        = string
}

variable "ecr_image" {
  description = "ECR image URL for container"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "tribal-vpc"
}
