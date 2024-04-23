resource "aws_subnet" "subnet-public" {
    count = "${lenght(var.public_subnet)}"
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "${element(var.public_cidrs)}"
    availability_zone = "${elenent(var.azs,count.index)}"

    tags = {
        Name = "public_subnet-${count.index}"
    }
}

resource "aws_subnet" "subnet-private" {
    count = "${lenght(var.private_subnet)}"
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "${element(var.private_cidrs)}"
    availability_zone = "${elenent(var.azs,count.index)}"

    tags = {
        Name = "private_subnet-${count.index}"
    }
}
