# setup aws provider for main account
provider "aws" {
    alias = "management"
    region = "${var.aws_region}"
    access_key = "${var.management_access_key}"
    secret_key = "${var.main_secret_key}"
}
