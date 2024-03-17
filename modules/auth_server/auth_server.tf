# # modules/okta_authorization_server/main.tf

resource "okta_auth_server" "test_authorization_server" {
  name                      = var.auth_server_name
  audiences                 = toset([var.auth_server_audience])
  description               = var.auth_server_description
  issuer_mode               = var.auth_server_issuer
  credentials_rotation_mode = var.auth_server_creds_rotation_mode
}