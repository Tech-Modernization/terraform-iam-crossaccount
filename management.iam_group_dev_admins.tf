# create a group, which will be able to assume "ExternalAdminRole" from dev account
resource "aws_iam_group" "dev_admins" {
    provider = "aws.management"
    name = "DevAdminsGroup"
}
