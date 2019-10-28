output "id" {
  description = "The id of the user pool client"
  value       = aws_cognito_user_pool_client.client.id
}
