output "testvpcid" {
    value = "${module.devops-testvpc.vpcid}"
}

output "public-testsubnetid" {
    value = "${module.devops-testvpc.public-subnetid}"
}

output "private-testsubnetid" {
    value = "${module.devops-testvpc.private-subnetid}"
}


output "testsgid" {
    value = "${module.devops-testvpc.sgid}"
}
output "env" {
    value = "${module.devopstest-testvpc.env}"
}

output "rolename" {
    value = "${module.prod_iam.rolename}"
}

output "instance_profile" {
    value = "${module.prod_iam.iam_instance_profile}"
}