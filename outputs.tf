#####
# Misc
#####

output "kubernetes_annotation" {
  description = "Kubernetes annoations to add on the service account for it to be able to assume the role."
  value       = { "eks.amazonaws.com/role-arn" = element(concat(aws_iam_role.this.*.arn, list("")), 0) }
}

#####
# IAM Role
#####

output "iam_role_name" {
  value = element(concat(aws_iam_role.this.*.name, list("")), 0)
}

output "iam_role_arn" {
  value = element(concat(aws_iam_role.this.*.arn, list("")), 0)
}

output "iam_role_id" {
  value = element(concat(aws_iam_role.this.*.id, list("")), 0)
}

output "iam_role_unique_id" {
  value = element(concat(aws_iam_role.this.*.unique_id, list("")), 0)
}
