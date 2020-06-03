variable "allowed_oauth_flows" {
  type        = list(string)
  description = "List of allowed OAuth flows (code, implicit, client_credential)"
  default     = []
}

variable "allowed_oauth_flows_user_pool_client" {
  type        = string
  description = "Whether the client is allowed to follow the OAuth protocol whe interacting with Cognito User Pool (true or false)"
  default     = "true"
}

variable "allowed_oauth_scopes" {
  type        = list(string)
  description = "List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito,signin.user.admin)"
  default     = []
}

variable "callback_urls" {
  type        = list(string)
  description = "List of allowed callback URLs for the identity prpviders"
  default     = []
}

variable "default_redirect_uri" {
  type        = string
  description = "The default redirect URI. Must be in the list of callback URLs"
  default     = ""
}

variable "explicit_auth_flows" {
  type        = list(string)
  description = "List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH)"
  default     = []
}

variable "generate_secret" {
  type        = string
  description = "Should be an application secret be generated (true or false)"
  default     = ""
}

variable "logout_urls" {
  type        = list(string)
  description = "List of allowed logout URLs for the identity providers"
  default     = []
}

variable "name" {
  type        = string
  description = "The name of the application client"
}

variable "read_attributes" {
  type        = list(string)
  description = "List of user pool attributes the application client can read from"
  default     = []
}

variable "refresh_token_validity" {
  type        = string
  description = "The time limit in days refresh tokens are valid for"
  default     = ""
}

variable "supported_identity_providers" {
  type        = list(string)
  description = "List of provider names for the identity providers that are supported on this client"
  default     = []
}

variable "user_pool_id" {
  type        = string
  description = "The user pool the client belongs to"
}

variable "write_attributes" {
  type        = list(string)
  description = "List of user pool attributes the application client ca write to"
  default     = []
}

