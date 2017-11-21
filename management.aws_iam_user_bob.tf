# create a user "bob"
resource "aws_iam_user" "bob" {
    provider = "aws.management"
    name = "bob"
}
