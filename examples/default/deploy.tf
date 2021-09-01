#####
# Context
#####

resource "aws_iam_openid_connect_provider" "this" {
  url = "https://accounts.google.com"

  client_id_list  = []
  thumbprint_list = []
}


#####
# Module
#####

module "this" {
  source = "../../"

  iam_openid_connect_provider_url = aws_iam_openid_connect_provider.this.url
  iam_openid_connect_provider_arn = aws_iam_openid_connect_provider.this.arn

  kubernetes_namespace       = "default"
  kubernetes_service_account = "default"

  iam_policy_arns_count = 0
  iam_policy_arns       = []
}
