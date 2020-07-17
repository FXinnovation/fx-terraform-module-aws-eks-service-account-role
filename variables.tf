#####
# Global
#####

variable "enabled" {
  description = "Whether or not to enable this module."
  default     = true
}

variable "tags" {
  description = "Tags that will be applied on all resources."
  default     = {}
}

#####
# Kubernetes
#####

variable "kubernetes_namespace" {
  description = "Kubernetes namespace in which reside the service account you want to give access to the role."
  type        = string
}

variable "kubernetes_service_account" {
  description = "Kubernetes service account you want to give access to the role."
  type        = string
}

#####
# EKS
#####

variable "iam_openid_connect_provider_url" {
  description = "URL of the AWS IAM OpenID Connect provider to use."
  type        = string
}

variable "iam_openid_connect_provider_arn" {
  description = "ARN of the AWS IAM OpenID Connect provider to use."
  type        = string
}

#####
# IAM Role
#####

variable "iam_role_name" {
  description = "name of the role."
  default     = null
  type        = string
}

variable "iam_role_name_prefix" {
  description = "name prefix of the role."
  default     = "external-role"
}

variable "iam_role_force_dettach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = null
  type        = bool
}

variable "iam_role_path" {
  description = "The path to the role."
  default     = null
  type        = string
}

variable "iam_role_description" {
  description = "The description of the role."
  default     = null
  type        = string
}

variable "iam_role_max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role."
  default     = null
  type        = number
}

variable "iam_role_permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the role."
  default     = null
  type        = string
}

#####
# IAM Role Policy Attachments
#####

variable "iam_policy_arns_count" {
  description = "The number of policies you want to attach to the role."
  type        = number
}

variable "iam_policy_arns" {
  description = "List of policy arns that will be attached to the role."
  type        = list(string)
}
