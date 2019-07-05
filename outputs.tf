output "this_aws_iam_user_arn" {
	description = "The IAM User ARN"
  value = aws_iam_user.this.arn
}

output "this_aws_iam_user_id" {
	description = "The IAM User ID"
  value = aws_iam_user.this.id
}

output "this_aws_iam_role_id" {
	description = "The IAM Role ID"
  value = aws_iam_role.this.id
}

output "this_aws_iam_role_arn" {
	description = "The IAM Role ARN"
  value = aws_iam_role.this.arn
}

output "this_aws_iam_access_key_id" {
	description = "The access key id"
  value = aws_iam_access_key.this.id
}

output "this_aws_iam_access_key_secret" {
	description = "The access key secret"
  value = aws_iam_access_key.this.secret
}

