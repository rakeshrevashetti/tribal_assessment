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

variable "public_subnet_a_cidr" {
  description = "CIDR block for public subnet A"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR block for public subnet B"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone_a" {
  description = "Availability zone for subnet A"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "Availability zone for subnet B"
  type        = string
  default     = "us-east-1b"
}

variable "public_subnet_a_name" {
  description = "Name tag for public subnet A"
  type        = string
  default     = "public-subnet-a"
}

variable "public_subnet_b_name" {
  description = "Name tag for public subnet B"
  type        = string
  default     = "public-subnet-b"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "tribal-vpc"
}
