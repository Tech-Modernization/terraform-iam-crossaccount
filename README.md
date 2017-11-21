# Terraforming Cross account role access

This example is modified from the examples given here:
http://blog.sinica.me/aws_multi_account_with_terraform.html

This code here shows how to use Terraform to set up cross account roles, here's the code in a more useable manner. You have to set up environment variables for the 2 different AWS accounts (e.g. export TF_VAR_.....).

Obviously you use a prepopulated group rather than the bob one. So id change the TF to being a data resource on an existing group.

AssumeRole
https://signin.aws.amazon.com/switchrole?account=[dev_account_id]&roleName=ExternalAdminRole

Well that's all good an all but how about automation?
You get the creds
aws sts assume-role --role-arn "arn:aws:iam::[dev_account_id]:role/ExternalAdminRole" --role-session-name "bob_dev"
