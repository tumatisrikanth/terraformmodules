output "rolename" {
    value = "${aws_iam_role.rolename}"
}

output "rolearn" {
    value = "${aws_iam_role.ec2_role.arn}"
}

output "instprofilename" {
    value = "${aws_iam_instance_profile.profilename}"
}

