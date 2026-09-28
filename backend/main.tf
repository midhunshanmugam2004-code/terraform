provider "aws" {
  region = "us-east-1"
}
module "ec2_instance" {
  source = "./modules/ec2_instance"
  instance_type = "t2.micro"
  ami_id        = "ami-0b6d9d3d33ba97d99"
}
resource "aws_s3_bucket" "mybucket" {
  bucket = "terraform-aws-backend-2026"
}
