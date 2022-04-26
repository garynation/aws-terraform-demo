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

