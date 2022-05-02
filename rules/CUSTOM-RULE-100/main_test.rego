package rules

import data.lib
import data.lib.testing

test_CUSTOM_RULE_100 {
	# array containing test cases where the rule is allowed
	allowed_test_cases := [{
		"want_msgs": [],
		"fixture": "allowed.tf",
	}]

	# array containing cases where the rule is denied
	denied_test_cases := [{
		"want_msgs": ["input.resource.aws_s3_bucket[denied_s3_bucket].acl"],
		"fixture": "denied.tf",
	}]

	test_cases := array.concat(allowed_test_cases, denied_test_cases)
	testing.evaluate_test_cases("CUSTOM-RULE-100", "./rules/CUSTOM-RULE-100/fixtures", test_cases)
}
