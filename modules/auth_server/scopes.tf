resource "okta_auth_server_scope" "scope_1" {
  auth_server_id   = okta_auth_server.test_authorization_server.id
  metadata_publish = var.scope_metadata_publish
  name             = var.scope_name_1
  display_name     = var.scope_display_name_1
  description      = var.scope_description_1
  consent          = var.scope_consent_1
}

resource "okta_auth_server_scope" "scope_2" {
  auth_server_id   = okta_auth_server.test_authorization_server.id
  metadata_publish = var.scope_metadata_publish
  name             = var.scope_name_2
  display_name     = var.scope_display_name_2
  description      = var.scope_description_2
  consent          = var.scope_consent_2
}