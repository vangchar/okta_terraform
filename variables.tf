# Okta Provider Variables
variable "okta_org_name" {
  description = "Name of Okta organization"
  sensitive   = true
}

variable "okta_base_url" {
  description = "Name of Okta Base URL"
  sensitive   = true
}

variable "okta_api_token" {
  description = "API Token"
  type        = string
  sensitive   = true
}