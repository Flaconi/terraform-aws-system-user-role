variable "inline_policies" {}

module "terraform_user_role" {
  source = "../../"
  name   = "testuser"

  iam_role_principals_arns = []
  tags                     = {}

  inline_policies = var.inline_policies
}
