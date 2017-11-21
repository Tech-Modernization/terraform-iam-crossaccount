# setup aws provider for dev account
provider "aws" {
  alias = "dev"
  region = "${var.aws_region}"
}
