package rules

deny[msg] {
	input.resource.aws_s3_bucket_acl[name]

	msg := {
		"publicId": "CUSTOM-RULE-101",
		"title": "AWS S3 Bucket ACL Not Recommended by AWS",
		"severity": "low",
		"msg": sprintf("input.resource.aws_s3_bucket_acl[%s]", [name]),
		"issue": "`aws_s3_bucket_acl` is not recommended by AWS",
		"impact": "",
		"remediation": "Use `aws_s3_bucket_policy` resource or the `aws_iam_policy` resource combined with `aws_iam_role_policy_attachment`, `aws_iam_user_policy_attachment`, or `aws_iam_group_policy_attachment`.",
		"references": ["https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference"],
	}
}