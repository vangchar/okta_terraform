output "auth_server_name" {
   value = okta_auth_server.test_authorization_server.name
   description = "Name of authorization server"
}

output "auth_server_id" {
  value = okta_auth_server.test_authorization_server.id
  description = "ID of auth server"
}

output "issuer_URL" {
  value = okta_auth_server.test_authorization_server.issuer
  description = "Issuer URL"
}

output "policy_id" {
  value = okta_auth_server_policy.auth_server_policy.id
  description = "Policy ID"
}
