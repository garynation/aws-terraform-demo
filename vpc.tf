resource "aws_vpc" "aws-demo" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo"
  }
}
resource "aws_vpc" "aws-demo2" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo2"
  }
}
resource "aws_vpc" "aws-demo3" {
  cidr_block = "10.1.1.1/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}

