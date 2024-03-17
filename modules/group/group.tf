resource "okta_group" "terraform_group" {
  name        = var.group_name
  description = "My Test Group"
}