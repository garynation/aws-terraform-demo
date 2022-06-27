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
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
resource "aws_vpc" "aws-demo4" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
resource "aws_vpc" "aws-demo5" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
resource "aws_vpc" "aws-demo6" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
resource "aws_vpc" "aws-demo7" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
