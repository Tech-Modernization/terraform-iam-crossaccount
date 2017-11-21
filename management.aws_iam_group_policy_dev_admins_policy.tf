# create a group policy, which allows to assume "ExternalAdminRole"
resource "aws_iam_group_policy" "dev_admins_policy" {
    provider = "aws.management"
    name = "DevAdminsPolicy"
    group = "${aws_iam_group.dev_admins.id}"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": {
        "Effect": "Allow",
        "Action": "sts:AssumeRole",
        "Resource": "${aws_iam_role.external_admin_role.arn}"
    }
}
EOF
}
