provider "aws" {
  region = "ap-northeast-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
}

module "rt" {
  source             = "./modules/rt"
  vpc_id             = module.vpc.vpc_id
  igw_id             = module.igw.igw_id
  public_subnet_a_id = module.subnet.subnet_id_public_a_id
  public_subnet_c_id = module.subnet.subnet_id_public_c_id
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ecr" {
  source = "./modules/ecr"
}

module "ecs" {
  source                   = "./modules/ecs"
  repository_url           = module.ecr.repository_url
  public_subnet_a_id       = module.subnet.subnet_id_public_a_id
  public_subnet_c_id       = module.subnet.subnet_id_public_c_id
  ecs_go_echo_public_sg_id = module.sg.ecs_go_echo_public_sg_id
}
