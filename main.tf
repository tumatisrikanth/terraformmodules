provider "aws" {
    access_key = ""
    secret_key = ""
     region = ""
}

module "devopstest-testvpc" {
    source = "./modules/testvpc"
vpc_cidr = "10.10.0.0/16"
vpc_name = "devopstest-testvpc"
IGW_name = "devopstest-testvpc-igw"
key_name = "vpc-1"
azs = [ "us-east-1a","us-east-1b","us-east-1c"]
public_subnet = "devopstest-publicsubnet"
private_subnet = "devopstest-privatesubnet"
public_cidrs = [ "10.10.1.0/24","10.10.2.0/24","10.10.3.0/24" ]
private_cidrs = [ "10.10.10.0/24","10.10.20.0/24","10.10.30.0/24" ]
Main_Routing_Table = "Main_Routing_Table"
private_Routing_Table = "private_Routing_Table"
environment = "prod" 
}

module "devopstest-testec2" {
    source = "./modules/testec2"
imagename = "ami-o13f17f36f8b1fefb"
instance_type = "t2.micro"
key_name = "vpc-1"
}

module "devopstest-testec2" {
    source = "./modules/testec2"
    imagename = "ami-o13f17f36f8b1fefb"
    instance_type = "t2.micro"
    key_name = "vpc-1"
    machinecount = "${module.devopstest-testvpc.env == "prod"  ? 3 : 1 }"
    sgid = "${module.devopstest-testvpc.sgid}"
    vpcname = "${module.devopstest-testvpc.vpcname }"
    public-subnets  = "${module.devopstest-testvpc.public-subnetid}"

}