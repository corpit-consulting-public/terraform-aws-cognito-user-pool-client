
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
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | The name of the application client | string | n/a | yes |
| user\_pool\_id | The user pool the client belongs to | string | n/a | yes |
| allowed\_oauth\_flows | List of allowed OAuth flows \(code, implicit, client\_credential\) | list(string) | `<list>` | no |
| allowed\_oauth\_flows\_user\_pool\_client | Whether the client is allowed to follow the OAuth protocol whe interacting with Cognito User Pool \(true or false\) | string | `"true"` | no |
| allowed\_oauth\_scopes | List of allowed OAuth scopes \(phone, email, openid, profile, and aws.cognito,signin.user.admin\) | list(string) | `<list>` | no |
| callback\_urls | List of allowed callback URLs for the identity prpviders | list(string) | `<list>` | no |
| default\_redirect\_uri | The default redirect URI. Must be in the list of callback URLs | string | `""` | no |
| explicit\_auth\_flows | List of authentication flows \(ADMIN\_NO\_SRP\_AUTH, CUSTOM\_AUTH\_FLOW\_ONLY, USER\_PASSWORD\_AUTH\) | list(string) | `<list>` | no |
| generate\_secret | Should be an application secret be generated \(true or false\) | bool | `"false"` | no |
| logout\_urls | List of allowed logout URLs for the identity providers | list(string) | `<list>` | no |
| prevent\_user\_existence\_errors | Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to ENABLED and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to LEGACY, those APIs will return a UserNotFoundException exception if the user does not exist in the user pool. | string | `""` | no |
| read\_attributes | List of user pool attributes the application client can read from | list(string) | `<list>` | no |
| refresh\_token\_validity | The time limit in days refresh tokens are valid for | string | `""` | no |
| supported\_identity\_providers | List of provider names for the identity providers that are supported on this client | list(string) | `<list>` | no |
| write\_attributes | List of user pool attributes the application client ca write to | list(string) | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The id of the user pool client |

