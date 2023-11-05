provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Name       = "hello-fis"
      Repository = "https://github.com/ericdahl/hello-fis"
    }
  }
}

data "aws_default_tags" "default" {}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

locals {
  name = data.aws_default_tags.default.tags["Name"]
}
