#####
# Module
#####

module "this" {
  source = "../../"

  enabled = false

  iam_openid_connect_provider_url = ""
  iam_openid_connect_provider_arn = ""

  kubernetes_namespace       = ""
  kubernetes_service_account = ""

  iam_policy_arns_count = 0
  iam_policy_arns       = []
}
