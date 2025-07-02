provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./ecs/vpc.tf"
}

module "ecs_cluster" {
  source = "./ecs/ecs_cluster.tf"
}

module "alb" {
  source = "./ecs/alb.tf"
}

module "ecs_app" {
  source = "./ecs/task_definition.tf"
}
