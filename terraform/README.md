# bsa-aws-iam
bsa identity management

## download the latest AWS Orgs extract with account details such id & name 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.60.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_assignment"></a> [assignment](#module\_assignment) | ./modules/assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ssoadmin_managed_policy_attachment.policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_managed_policy_attachment) | resource |
| [aws_ssoadmin_permission_set.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_identitystore_group.azure_ad_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/identitystore_group) | data source |
| [aws_ssoadmin_instances.azure_ad](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | The account ID you intend to deploy resources to | `string` | n/a | yes |
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The application name to be used in the tags | `string` | n/a | yes |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | Map(optional, {}): Optional tags | `map(any)` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment being deployed to [dev/uat/prod] | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | The resource owner | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region has been deployed | `string` | `"af-south-1"` | no |
| <a name="input_team_email"></a> [team\_email](#input\_team\_email) | The team email to contact for information etc. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_assignment_ids"></a> [assignment\_ids](#output\_assignment\_ids) | n/a |
<!-- END_TF_DOCS -->