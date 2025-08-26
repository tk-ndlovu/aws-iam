data "aws_caller_identity" "current" {}

data "aws_organizations_organization" "bsa_org" {}

data "aws_ssoadmin_instances" "azure_ad" {}

data "aws_identitystore_group" "azure_ad_group" {
  for_each = local.azure_ad_groups
  identity_store_id = tolist(data.aws_ssoadmin_instances.azure_ad.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = each.value.ad_group_name
  }
}
