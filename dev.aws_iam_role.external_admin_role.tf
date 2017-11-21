# in dev account create a role which can be assumed by main account
resource "aws_iam_role" "external_admin_role" {
    provider = "aws.dev"
    name = "ExternalAdminRole"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.main_account_id}:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
