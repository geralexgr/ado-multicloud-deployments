terraform {
    #required_version = "1.6.3"

    // backend "s3" {
    //     key = ""
    // }

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.24.0"
        }
    }
}

provider "aws" {
  region     =  var.region
}