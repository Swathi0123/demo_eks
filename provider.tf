
terraform {
 required_providers {
 kubernetes = {
 source = "hashicorp/kubernetes"
 version = "2.11.0"
 }
 }
}

provider "aws" {
  region = "ap-southeast-1"
}


terraform {
  backend "s3" {
    bucket         = "poceks1"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "sample"
  }
}

provider "kubernetes" {
 config_path = "/root/.kube/config"
}
