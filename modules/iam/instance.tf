resource "aws_iam_instance_profile" "profilename" {
  name = "example_profile"
  role = aws_iam_role.namerole.name
}