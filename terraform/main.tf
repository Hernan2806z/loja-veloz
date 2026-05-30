provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "rede_loja_veloz" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_eks_cluster" "cluster_loja_veloz" {
  name     = "loja-veloz-cluster"
  role_arn = "arn:aws:iam::123456789012:role/EksRole"

  vpc_config {
    subnet_ids = ["subnet-abcde012", "subnet-bcde012a"]
  }
}