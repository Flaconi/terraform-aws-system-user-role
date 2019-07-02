variable "name" {
  description = "Name of the user and role"
}

variable "tags" {
  description = "Tags applied to the resources"
  default     = {}
}

variable "inline_policies" {
  description = "Policies applied to the assuming role"
  default     = []
}

variable "iam_role_principals_arns" {
  description = "Other IAM Principals which can assume the role"
  default     = []
}
