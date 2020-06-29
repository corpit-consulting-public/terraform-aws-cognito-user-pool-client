
# tf-aws-cognito-user-pool-client

Terraform module that creates Cognito User Pool Client resources in AWS.

Important
  The following module is necessary for the Cognito User Pool Client operation

* [Cognito User Pool](https://registry.terraform.io/modules/corpit-consulting-public/cognito-user-pool/aws/0.1.0)

## Terraform Version

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `teraform012` branch.

Terraform 0.11. Pin module version to `~> v1.0`. Submit pull-requests to `terraform11` branch.

## Usage

```hcl

module "cognito-user-pool-client" {
  source                               = "corpit-consulting-public/cognito-user-pool-client-mod/aws"
  version                              = "v2.0.1"
  name                                 = var.name
  user_pool_id                         = module.CorpitUserPool.id
  read_attributes                      = var.read_attributes
  supported_identity_providers         = var.supported_identity_providers
  callback_urls                        = var.callback_urls
  logout_urls                          = var.logout_urls
  allowed_oauth_flows                  = [var.allowed_oauth_flows]
  refresh_token_validity               = var.refresh_token_validity
  allowed_oauth_flows_user_pool_client = var.allowed_oauth_flows_user_pool_client
  allowed_oauth_scopes                 = var.allowed_oauth_scopes
}

```

## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
