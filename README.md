# terraform-module-aws-eks-service-account-role

## Considerations

* We currently only support service accounts to be allowed access to roles.
* When applying a role to a service account, the pods that use that service account will need to be restart for the changes to take effect.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 2.31 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.31 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | Whether or not to enable this module. | `bool` | `true` | no |
| iam\_openid\_connect\_provider\_arn | ARN of the AWS IAM OpenID Connect provider to use. | `string` | n/a | yes |
| iam\_openid\_connect\_provider\_url | URL of the AWS IAM OpenID Connect provider to use. | `string` | n/a | yes |
| iam\_policy\_arns | List of policy arns that will be attached to the role. | `list(string)` | n/a | yes |
| iam\_policy\_arns\_count | The number of policies you want to attach to the role. | `number` | n/a | yes |
| iam\_role\_description | The description of the role. | `string` | `null` | no |
| iam\_role\_force\_dettach\_policies | Specifies to force detaching any policies the role has before destroying it. | `bool` | `null` | no |
| iam\_role\_max\_session\_duration | The maximum session duration (in seconds) that you want to set for the specified role. | `number` | `null` | no |
| iam\_role\_name | name of the role. | `string` | `null` | no |
| iam\_role\_name\_prefix | name prefix of the role. | `string` | `"external-role"` | no |
| iam\_role\_path | The path to the role. | `string` | `null` | no |
| iam\_role\_permissions\_boundary | The ARN of the policy that is used to set the permissions boundary for the role. | `string` | `null` | no |
| kubernetes\_namespace | Kubernetes namespace in which reside the service account you want to give access to the role. | `string` | n/a | yes |
| kubernetes\_service\_account | Kubernetes service account you want to give access to the role. | `string` | n/a | yes |
| tags | Tags that will be applied on all resources. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_arn | n/a |
| iam\_role\_id | n/a |
| iam\_role\_name | n/a |
| iam\_role\_unique\_id | n/a |
| kubernetes\_annotation | Kubernetes annoations to add on the service account for it to be able to assume the role. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
