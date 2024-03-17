module "group" {
  source         = "./modules/group"
  okta_api_token = var.okta_api_token
  okta_base_url  = var.okta_base_url
  okta_org_name  = var.okta_org_name
}

module "applications" {
  source         = "./modules/application"
  okta_api_token = var.okta_api_token
  okta_base_url  = var.okta_base_url
  okta_org_name  = var.okta_org_name
}

module "auth_server" {
  source         = "./modules/auth_server"
  okta_api_token = var.okta_api_token
  okta_base_url  = var.okta_base_url
  okta_org_name  = var.okta_org_name
  group_id       = module.group.terraform_group_id
  test_app_id    = module.applications.test_app_id
}