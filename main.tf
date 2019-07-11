resource "aws_cognito_user_pool_client" "client" {
  name = "${var.name}"
  user_pool_id = "${var.user_pool_id}"
  generate_secret     = "${var.generate_secret}"
  explicit_auth_flows = ["${var.explicit_auth_flows}"]
}
