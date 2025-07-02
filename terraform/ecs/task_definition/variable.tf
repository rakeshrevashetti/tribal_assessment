variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "task_exec_role_arn" {
  description = "IAM Role ARN for ECS Task Execution"
  type        = string
}

variable "ecr_image" {
  description = "ECR image URI for the container"
  type        = string
}

variable "subnets" {
  description = "Subnets for ECS service"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for ECS tasks"
  type        = string
}

variable "alb_target_group_arn" {
  description = "Target group ARN for ECS service"
  type        = string
}
