resource "okta_auth_server_policy" "auth_server_policy" {
  auth_server_id   = okta_auth_server.test_authorization_server.id
  status           = var.access_policy_status
  name             = var.access_policy_name
  description      = var.access_policy_description
  priority         = var.access_policy_priority
  client_whitelist = [var.test_app_id]
}

resource "okta_auth_server_policy_rule" "auth_server_policy_rule" {
  auth_server_id       = okta_auth_server.test_authorization_server.id
  policy_id            = okta_auth_server_policy.auth_server_policy.id
  status               = var.access_policy_rule_status
  name                 = var.access_policy_rule_name
  priority             = var.access_policy_rule_priority
  group_whitelist      = [var.group_id]
  grant_type_whitelist = var.access_policy_rule_grant_type_whitelist
  scope_whitelist      = var.access_policy_rule_scope_whitelist
  access_token_lifetime_minutes = var.access_policy_rule_access_token_lifetime
  refresh_token_lifetime_minutes = var.access_policy_rule_scope_refresh_token_lifetime
  refresh_token_window_minutes = var.access_policy_rule_scope_refresh_token_window
} 