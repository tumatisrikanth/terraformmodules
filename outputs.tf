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