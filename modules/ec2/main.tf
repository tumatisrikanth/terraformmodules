resource "aws_instance" "web-1" {
    count = var.machinecount
    ami = var.imagename
    iam_instance_profile = "${var.iam_instance_profile}"
    instance_type = "var.instance_type"
    key_name = "var.key_name"
    subnet_id = "${element(var.public-subnetid,count.index}"
    vpc_security_group_ids = ["${var.sgid}"]
    associate_public_ip_address = true	
    tags = {
        Name = "${var.vpcname}-public-server-${count.index+1}"
    }
}
