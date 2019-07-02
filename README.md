# AWS IAM Service User Role

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-service-user-role.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-service-user-role)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-service-user-role.svg)](https://github.com/Flaconi/terraform-aws-service-user-role/releases)
[![license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Terraform module that provides an IAM User and IAM Role with given policies.

## Examples

Check the [examples](examples) directory.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Name of the user and role | string | n/a | yes |
| iam\_role\_principals\_arns | Other IAM Principals which can assume the role | list | `[]` | no |
| inline\_policies | Policies applied to the assuming role | list | `[]` | no |
| tags | Tags applied to the resources | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_aws\_iam\_role\_arn |  |
| this\_aws\_iam\_role\_id |  |
| this\_aws\_iam\_user\_arn |  |
| this\_aws\_iam\_user\_id |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

[MIT](LICENSE)

Copyright (c) 2018 [Flaconi GmbH](https://github.com/Flaconi)
