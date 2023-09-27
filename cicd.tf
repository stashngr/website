# create ci/cd user with access keys (for build system)
resource "aws_iam_user" "cicd_ops" {
  name = "devOps_${var.app}_${var.environment}_cicd_ops"
}

resource "aws_iam_access_key" "cicd_keys" {
  user = aws_iam_user.cicd_ops.name
}

# The AWS keys for the CICD user to use in a build system
output "cicd_keys" {
  value = "terraform show -json | jq '.values.root_module.resources | .[] | select ( .address == \"aws_iam_access_key.cicd_keys\") | { AWS_ACCESS_KEY_ID: .values.id, AWS_SECRET_ACCESS_KEY: .values.secret }'"
}