# Variables for Okta Application Module
variable "app_name" {
  default = "Terraform Test App"
  description = "This is the name of the Application"
}

variable "app_redirect_uris" {
  default = ["myapp://callback"]
  description = "List of redirect URIs for the Okta app"
  type = list(string)
}

variable "app_sign_out_uris" {
  default = ["myapp://callback"]
  description = "List of sign out redirect URIs for the Okta app"
  type = list(string)
}

variable "app_refresh_token_rotation" {
  default = "STATIC"
  description = "Refresh token rotation"
}

variable "app_consent_method" {
  default = "REQUIRED"
  description = "Indicates whether user consent is required or implicit."
}

variable "app_grant_types" {
  default = ["authorization_code", "refresh_token"]
  description = "Grant types accepted by the application"
}

variable "app_type" {
  default = "native"
  description = "Type of app being created"  
}

variable "app_token_endpoint_auth_method" {
  default = "none"
  description = "App endpoint authentication method"
}

variable "app_pkce_requirement" {
  default = true
  description = "Is PKCE required for the app?"
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
