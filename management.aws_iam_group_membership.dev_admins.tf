# add "bob" to dev_admins group
resource "aws_iam_group_membership" "dev_admins" {
    provider = "aws.management"
    name = "dev_admins_group_membership"
    users = [
        "${aws_iam_user.bob.name}"
    ]
    group = "${aws_iam_group.dev_admins.name}"
}
