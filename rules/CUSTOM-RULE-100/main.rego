package rules

deny[msg] {
	bucket := input.resource.aws_s3_bucket[name]
	bucket.acl

	msg := {
		"publicId": "CUSTOM-RULE-100",
		"title": "AWS S3 Bucket ACL Deprecated by Terraform and Not Recommended by AWS",
		"severity": "medium",
		"msg": sprintf("input.resource.aws_s3_bucket[%s].acl", [name]),
		"issue": "`aws_s3_bucket` resource `acl` argument is deprecated by Terraform and not recommended by AWS",
		"impact": "",
		"remediation": "If S3 bucket ACLs are intended, use `aws_s3_bucket_acl` resource. Otherwise, use `aws_s3_bucket_policy` resource or the `aws_iam_policy` resource combined with `aws_iam_role_policy_attachment`, `aws_iam_user_policy_attachment`, or `aws_iam_group_policy_attachment`.",
		"references": ["https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference"],
	}
}
