#####
# Locals
#####

locals {
  tags = {
    Terraform  = "true"
    managed-by = "terraform"
  }
}


#####
# Datasources
#####

data "aws_iam_policy_document" "this" {
  count = var.enabled ? 1 : 0

  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(var.iam_openid_connect_provider_url, "https://", "")}:sub"
      values   = ["system:serviceaccount:${var.kubernetes_namespace}:${var.kubernetes_service_account}"]
    }

    principals {
      identifiers = [var.iam_openid_connect_provider_arn]
      type        = "Federated"
    }
  }
}


#####
# IAM Role
#####

resource "aws_iam_role" "this" {
  count = var.enabled ? 1 : 0

  assume_role_policy    = element(concat(data.aws_iam_policy_document.this.*.json, [""]), 0)
  name                  = var.iam_role_name
  name_prefix           = var.iam_role_name_prefix
  force_detach_policies = var.iam_role_force_dettach_policies
  path                  = var.iam_role_path
  description           = var.iam_role_description
  max_session_duration  = var.iam_role_max_session_duration
  permissions_boundary  = var.iam_role_permissions_boundary

  tags = merge(
    local.tags,
    var.tags
  )
}


#####
# IAM Role Policy attachments
#####

resource "aws_iam_role_policy_attachment" "this" {
  count = var.enabled ? var.iam_policy_arns_count : 0

  role       = element(concat(aws_iam_role.this.*.name, [""]), 0)
  policy_arn = var.iam_policy_arns[count.index]
}
