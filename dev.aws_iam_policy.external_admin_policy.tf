# in dev account create iam policy, which will grants admin rights
resource "aws_iam_policy" "external_admin_policy" {
    provider = "aws.dev"
    name = "ExternalAdminPolicy"
    path = "/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}
