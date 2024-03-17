# Terraform x Okta

This is a sample project to showcase how Terraform can be leveraged to create Okta resources. This project will:
 * Create an Okta Application (native)
 * Create an Authorization Server
    * Access Policy
    * Claims
    * Scopes
  * Group

## Table of Contents

* [Prerequisites](#prerequisites)
* [Quick Start](#quick-start)
* [Additional Information](#additional-information)

## Prerequisites

* Okta Tenant - Free Developer Tenant (https://developer.okta.com/).
* Terraform Install Documentation (https://learn.hashicorp.com/tutorials/terraform/install-cli)

## Quick Start

### Setup Steps

Setup a developer Okta Org and create an API Token.

1. Setup a developer Okta Org at [developer.okta.com](https://developer.okta.com/).
2. Activate your Okta Org and navigate to the Dashboard.
3. On the left side bar menu navigate `API` menu and select `Tokens`.
4. Click `Create Token` and name the API Token.
5. Copy and store the generated token so it can used for the `terraform.tfvars` file later. <br>
NOTE: You will only be able to view the token once.
6. Make note of the Okta Org url. (ie. `dev-123456.okta.com`) for the `terraform.tfvars` file.


## Additional information

* Okta
  * [Developer.okta.com](https://developer.okta.com)
  * [Okta + Terraform](https://www.okta.com/blog/2019/08/better-together-using-the-okta-integration-with-hashicorp-terraform)

* Terraform
  * [Introduction to Terraform](https://www.terraform.io/intro/index.html)
  * [Terraform Tutorial](https://learn.hashicorp.com/terraform)
  * [Terraform Okta Provider](https://www.terraform.io/docs/providers/okta/index.html)
