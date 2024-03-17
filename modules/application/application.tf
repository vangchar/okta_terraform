resource "okta_app_oauth" "test_app" {
  label = var.app_name
  type = var.app_type
  token_endpoint_auth_method = var.app_token_endpoint_auth_method
  grant_types = var.app_grant_types
  redirect_uris = var.app_redirect_uris
  post_logout_redirect_uris = var.app_sign_out_uris
  pkce_required = var.app_pkce_requirement
  refresh_token_rotation = var.app_refresh_token_rotation
  consent_method = var.app_consent_method
}