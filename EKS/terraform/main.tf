provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc"
}

module "eks" {
  source          = "./eks_cluster"
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.subnet_ids
  cluster_name    = var.cluster_name
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
}
