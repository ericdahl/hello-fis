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

locals {
  name = data.aws_default_tags.default.tags["Name"]
}
