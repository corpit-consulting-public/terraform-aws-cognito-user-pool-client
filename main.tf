resource "aws_cognito_user_pool_client" "client" {
  name = "${var.name}"
  user_pool_id = "${var.user_pool_id}"
  generate_secret                       = "${var.generate_secret}"
  explicit_auth_flows                  = ["${var.explicit_auth_flows}"]
  read_attributes                      = "${var.read_attributes}"
  supported_identity_providers         = "${var.supported_identity_providers}"
  callback_urls                        = "${var.callback_urls}"
  logout_urls                          = "${var.logout_urls}"
  allowed_oauth_flows                  = "${var.allowed_oauth_flows}"
  refresh_token_validity               = "${var.refresh_token_validity}"
  allowed_oauth_flows_user_pool_client = "${var.allowed_oauth_flows_user_pool_client}"
  allowed_oauth_scopes                 = "${var.allowed_oauth_scopes}"
}
