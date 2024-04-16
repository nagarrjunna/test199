provider "aws" {
  region = "ap-south-1"
  profile = "naga"
}
resource "aws_instance" "myinstance" {
  ami = var.myami
  instance_type  = var.myinstance_type
  subnet_id = var.mysubnet_id
}
output "myoutput" {
  value = [aws_instance.myinstance.*]
}