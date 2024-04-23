resource "aws_route_table" "terraform-public" {
    vpc_id = "${aws_vpc.default.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.default.id}"
    }

    tags = {
        Name = "${var.Main_Routing_Table}"
    }
}

resource "aws_route_table_association" "terraform-public" {
        count = "${lenght(var.private_subnet)}"
    subnet_id = "${element(aws_subnet.subnet1-public.id,count.index)}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}
resource "aws_route_table_association" "terraform-private" {
        count = "${lenght(var.private_subnet)}"
    subnet_id = "${element(aws_subnet.subnet-private.id,count.index)}"
    route_table_id = "${aws_route_table.terraform-private.id}"
}

resource "aws_route_table" "terraform-private" {
    vpc_id = "${aws_vpc.default.id}"
    tags = {
        Name = "${var.Main_Routing_Table}"
    }
}
