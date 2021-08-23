# terraform-module-aws-eks-service-account-role

## Considerations

* We currently only support service accounts to be allowed access to roles.
* When applying a role to a service account, the pods that use that service account will need to be restart for the changes to take effect.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether or not to enable this module. | `bool` | `true` | no |
| <a name="input_iam_openid_connect_provider_arn"></a> [iam\_openid\_connect\_provider\_arn](#input\_iam\_openid\_connect\_provider\_arn) | ARN of the AWS IAM OpenID Connect provider to use. | `string` | n/a | yes |
| <a name="input_iam_openid_connect_provider_url"></a> [iam\_openid\_connect\_provider\_url](#input\_iam\_openid\_connect\_provider\_url) | URL of the AWS IAM OpenID Connect provider to use. | `string` | n/a | yes |
| <a name="input_iam_policy_arns"></a> [iam\_policy\_arns](#input\_iam\_policy\_arns) | List of policy arns that will be attached to the role. | `list(string)` | n/a | yes |
| <a name="input_iam_policy_arns_count"></a> [iam\_policy\_arns\_count](#input\_iam\_policy\_arns\_count) | The number of policies you want to attach to the role. | `number` | n/a | yes |
| <a name="input_iam_role_description"></a> [iam\_role\_description](#input\_iam\_role\_description) | The description of the role. | `string` | `null` | no |
| <a name="input_iam_role_force_dettach_policies"></a> [iam\_role\_force\_dettach\_policies](#input\_iam\_role\_force\_dettach\_policies) | Specifies to force detaching any policies the role has before destroying it. | `bool` | `null` | no |
| <a name="input_iam_role_max_session_duration"></a> [iam\_role\_max\_session\_duration](#input\_iam\_role\_max\_session\_duration) | The maximum session duration (in seconds) that you want to set for the specified role. | `number` | `null` | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | name of the role. | `string` | `null` | no |
| <a name="input_iam_role_name_prefix"></a> [iam\_role\_name\_prefix](#input\_iam\_role\_name\_prefix) | name prefix of the role. | `string` | `"external-role"` | no |
| <a name="input_iam_role_path"></a> [iam\_role\_path](#input\_iam\_role\_path) | The path to the role. | `string` | `null` | no |
| <a name="input_iam_role_permissions_boundary"></a> [iam\_role\_permissions\_boundary](#input\_iam\_role\_permissions\_boundary) | The ARN of the policy that is used to set the permissions boundary for the role. | `string` | `null` | no |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | Kubernetes namespace in which reside the service account you want to give access to the role. | `string` | n/a | yes |
| <a name="input_kubernetes_service_account"></a> [kubernetes\_service\_account](#input\_kubernetes\_service\_account) | Kubernetes service account you want to give access to the role. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags that will be applied on all resources. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | n/a |
| <a name="output_iam_role_id"></a> [iam\_role\_id](#output\_iam\_role\_id) | n/a |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | n/a |
| <a name="output_iam_role_unique_id"></a> [iam\_role\_unique\_id](#output\_iam\_role\_unique\_id) | n/a |
| <a name="output_kubernetes_annotation"></a> [kubernetes\_annotation](#output\_kubernetes\_annotation) | Kubernetes annoations to add on the service account for it to be able to assume the role. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)

## Git Hooks
This repository uses [pre-commit](https://pre-commit.com/) hooks.
