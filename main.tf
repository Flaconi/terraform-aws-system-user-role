# -------------------------------------------------------------------------------------------------
# IAM User
# -------------------------------------------------------------------------------------------------
resource "aws_iam_user" "this" {
  name          = var.name
  force_destroy = true
  tags          = var.tags
}


resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}


# -------------------------------------------------------------------------------------------------
# IAM Role
# -------------------------------------------------------------------------------------------------

resource "aws_iam_role" "this" {
  name = var.name

  assume_role_policy = data.aws_iam_policy_document.trust_policy.json
  description        = "description"

  tags = var.tags
}


data "aws_iam_policy_document" "trust_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }

  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = concat(var.iam_role_principals_arns, aws_iam_user.this.*.arn)
    }
  }
}


data "aws_iam_policy_document" "this" {
  count = length(var.inline_policies)

  dynamic statement {
    for_each = var.inline_policies[count.index].statements

    content {
      sid       = lookup(statement.value, "sid", "")
      effect    = lookup(statement.value, "effect", "Allow")
      actions   = lookup(statement.value, "actions")
      resources = statement.value.resources
    }
  }
}

resource "aws_iam_role_policy" "this" {
  count  = length(var.inline_policies)
  name   = lookup(var.inline_policies[count.index], "name")
  role   = aws_iam_role.this.id
  policy = data.aws_iam_policy_document.this[count.index].json
}
