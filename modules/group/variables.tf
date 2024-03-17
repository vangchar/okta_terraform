# Variables for Okta Group Module
variable "group_name" {
  default = "terraform_test_group"
  description = "Name of the Okta group"
}

variable "group_description" {
  default = "terraform_test_group"
  description = "This is the test group created by Terraform"
}

# Okta Provider Variables passed through the root module

variable "okta_org_name" {
  description = "Name of Okta organization"
  sensitive = true
}

variable "okta_base_url" {
  description = "Name of Okta Base URL"
  sensitive = true
}

variable "okta_api_token" {
  description = "API Key for authentication"
  type = string
  sensitive = true
}
