
# attach policy to role
resource "aws_iam_policy_attachment" "external_admin_policy_attachment_to_external_admin_role" {
    provider = "aws.dev"
    name = "external_admin_policy_attachment"
    roles = ["${aws_iam_role.external_admin_role.name}"]
    policy_arn = "${aws_iam_policy.external_admin_policy.arn}"
}
