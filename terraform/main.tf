provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./ecs/vpc"
  vpc_cidr   = var.vpc_cidr
  vpc_name   = var.vpc_name
  public_subnet_a_cidr  = var.public_subnet_a_cidr
  public_subnet_b_cidr  = var.public_subnet_b_cidr

  availability_zone_a   = var.availability_zone_a
  availability_zone_b   = var.availability_zone_b

  public_subnet_a_name  = var.public_subnet_a_name
  public_subnet_b_name  = var.public_subnet_b_name
}

module "ecs_cluster" {
  source = "./ecs/ecs_cluster"
  ecs_cluster_name = var.ecs_cluster_name
}

module "alb" {
  source = "./ecs/alb"
  vpc_id            = module.network.vpc_id
  public_subnet_ids = module.network.public_subnet_ids
  alb_sg_id         = module.network.alb_sg_id
}

module "ecs_app" {
  source                 = "./ecs/task_definition"
  cluster_name           = module.ecs_cluster.ecs_cluster_name
  ecr_image              = var.ecr_image
  subnets                = module.network.public_subnet_ids
  security_group_id      = module.network.ecs_sg_id
  alb_target_group_arn   = module.alb.target_group_arn
}
