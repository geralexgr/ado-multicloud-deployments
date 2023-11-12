variable "serverless_app_name" {
    type = string
    description = "Name for the serverless components on azure/aws"
}

variable "region" {
    type = string
    description = "Cloud region for resources"
    default = "eu-west-1"
}

