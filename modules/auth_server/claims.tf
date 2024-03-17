resource "okta_auth_server_claim" "claim_1" {
  auth_server_id = okta_auth_server.test_authorization_server.id
  name           = var.claim_name_1
  value          = var.claim_value_1
  scopes         = var.claim_scopes_1
  claim_type     = var.claim_type_1

  depends_on = [ okta_auth_server_scope.scope_2 ]
}

resource "okta_auth_server_claim" "claim_2" {
  auth_server_id = okta_auth_server.test_authorization_server.id
  name           = var.claim_name_2
  value          = var.claim_value_2
  scopes         = var.claim_scopes_2
  claim_type     = var.claim_type_2

  depends_on = [ okta_auth_server_scope.scope_1 ]
}
