# Variables for Okta Authorization Server Module

# Variables for auth_server.tf
variable "auth_server_name" {
  default = "terraform_test_auth_server"
  description = "This is a test auth server created by Terraform"
}
variable "auth_server_description" {
  default = "terraform_test_auth_server"
  description = "This is a test auth server description created by Terraform"
}

variable "auth_server_audience" {
  default = "example_auth_server_audience"
  description = "Issuer URL of the Okta authroization server"
}

variable "auth_server_issuer" {
  default = "ORG_URL"
  description = "Issuer URL of the Okta authroization server"
}

variable "auth_server_creds_rotation_mode" {
  default = "AUTO"
  description = "The key rotation mode for the authorization server"
}

# Variables for scopes.tf
variable "scope_metadata_publish" {
  default = "ALL_CLIENTS"
  description = "Whether to publish metadata or not. "
}
# Scope 1
variable "scope_name_1" {
  default = "Scope1"
  description = "Auth server scope name."
}

variable "scope_display_name_1" {
  default = "Scope1"
  description = "Name of the end user displayed in a consent dialog box."
}

variable "scope_description_1" {
  default = "This is the test scope 1"
  description = "Description of scope 1"
}

variable "scope_consent_1"{
  default = "IMPLICIT"
  description = "Indicates whether a consent dialog is needed for the scope."
}

# Scope 2
variable "scope_name_2" {
  default = "Scope2"
  description = "Auth server scope name."
}

variable "scope_display_name_2" {
  default = "Scope2"
  description = "Name of the end user displayed in a consent dialog box."
}

variable "scope_description_2" {
  default = "This is the test scope 2"
  description = "Description of scope 1"
}

variable "scope_consent_2"{
  default = "IMPLICIT"
  description = "Indicates whether a consent dialog is needed for the scope."
}

# Variables for Claims

# Variables for Claim 1

variable "claim_name_1"{
  default = "claim1"
  description = "Name of claim"
}

variable "claim_value_1"{
  default = "appuser.claim1"
  description = "Value of claim"
}

variable "claim_scopes_1"{
  default = ["Scope1"]
  description = "List of scopes the claim is tied to"
}

variable "claim_type_1"{
  default = "RESOURCE"
  description = "Specifies whether claim is for access token or ID token"
}

# Variables for claim 2

variable "claim_name_2"{
  default = "claim2"
  description = "Name of claim"
}

variable "claim_value_2"{
  default = "appuser.claim2"
  description = "Value of claim"
}

variable "claim_scopes_2"{
  default = ["Scope2"]
  description = "List of scopes the claim is tied to"
}

variable "claim_type_2"{
  default = "RESOURCE"
  description = "Specifies whether claim is for access token or ID token"
}

# Variables for the access policy

variable "access_policy_status"{
  default = "ACTIVE"
  description = "The status of the Auth Server Policy."
}

variable "access_policy_name"{
  default = "All Users Access Rule"
  description = "The name of the Auth Server Policy."
}

variable "access_policy_description"{
  default = "This policy applies to all users"
  description = "The description of the Auth Server Policy."
}

variable "access_policy_priority"{
  default = 1
  description = "The priority of the Auth Server Policy."
}

# Variables for Access Policy Rule

variable "access_policy_rule_status"{
  default = "ACTIVE"
  description = "The status of the Auth Server Policy Rule."
}

variable "access_policy_rule_name"{
  default = "All Users Access Rule"
  description = "Auth Server Policy Rule name."
}

variable "access_policy_rule_priority"{
  default = 1
  description = "Priority of the auth server policy rule."
}

variable "access_policy_rule_grant_type_whitelist"{
  default = ["authorization_code", "client_credentials"]
  description = "List of accepted grant type values."
}

variable "access_policy_rule_scope_whitelist"{
  default = ["*"]
  description = "Scopes allowed for this policy rule."
}

variable "access_policy_rule_access_token_lifetime"{
  default = 60
  description = "Lifetime of access token"
}

variable "access_policy_rule_scope_refresh_token_lifetime"{
  default = 1440
  description = "Lifetime of refresh token."
}

variable "access_policy_rule_scope_refresh_token_window"{
  default = 1440
  description = "Window in which a refresh token can be used."
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

# These variables call APP ID and GROUP ID
variable "test_app_id" {
  description = "ID of the Okta OAuth app"
  type        = string
}

variable "group_id" {
  description = "ID of the Okta group"
  type        = string
}
