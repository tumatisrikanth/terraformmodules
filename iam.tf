module "prod_iam" {
    source = "./modules/podiam"
rolename = "prod-testrole"
aws_iam_instance_profile = "prod-ins-profile"
envname = "${module.devopstest-testvpc.env}"
} 


module "prod_iam_policy" {
    source = "./modules/iam-policyattachment"
    attachroles = "${module.devopstest-iam.rolename}"
    policyname = "prod-iam-policy"
}