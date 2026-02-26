provider "aws" {
  region = "ap-south-2"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "my-vpc"
  cidr   = "10.0.0.0/16"

  azs             = ["ap-south-2a", "ap-south-2b", "ap-south-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = "true"
  create_database_subnet_route_table=true
  tags = {

    Terraform   = "true"
    Environment = "dev"
  }

}
