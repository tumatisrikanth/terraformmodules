output "vpcid" {
    value = "${aws_vpc.default.id}"
}

output "public-subnetid" {
    value = "${aws_subnet.subnet-public.*.id}"
}

output "private-subnetid" {
    value = "${aws_subnet.subnet-private.*.id}"
}


output "sgid" {
    value = "${aws_security_group.allow_all.id}"
}