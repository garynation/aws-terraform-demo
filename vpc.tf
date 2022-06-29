resource "aws_vpc" "aws-demo" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo"
  }
}
resource "aws_vpc" "demo for Paul H" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo"
  }
}