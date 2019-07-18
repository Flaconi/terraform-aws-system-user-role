provider "aws" {
  region = var.region
}

module "terraform_user_role" {
  source  = "../../"
  name    = "testuser"
  enabled = true

  iam_role_principals_arns = []
  tags                     = {}

  inline_policies    = var.inline_policies
  attach_policy_arns = ["arn:aws:iam::aws:policy/AmazonVPCReadOnlyAccess"]
}
