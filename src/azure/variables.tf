variable "serverless_app_name" {
    type = string
    description = "Name for the serverless components on azure/aws"
}

variable "region" {
    type = string
    description = "Cloud region for resources"
    default = "West Europe"
}

variable "rg_name" {
    type = string
    description = "Resource group name"
    default = "multicloudrg"
}

variable "storage_account_tier" {
    type = string
    description = "Storage account tier"
    default = "Standard"
}

variable "storage_account_replication" {
    type = string
    description = "Storage account replication type"
    default = "LRS"
}

variable "serviceplan_name" {
    type = string
    description = "Service plan name"
    default = "multicloud-serviceplan"
}

variable "serviceplan_type" {
    type = string
    description = "Service plan type"
    default = "Linux"
}

variable "serviceplan_sku" {
    type = string
    description = "Service plan SKU"
    default = "Y1"
}

variable "app_settings" {
    description = "A key-value pair of App Settings"
    default     = {
        "WEBSITE_RUN_FROM_PACKAGE" = "1"
    }
}