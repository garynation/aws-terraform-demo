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
resource "aws_vpc" "aws-demo4" {
  cidr_block = "10.1.1.1/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
resource "aws_vpc" "aws-demo5" {
  cidr_block = "10.1.1.1/16"

  tags = {
    Name = "${var.name}-aws-demo3"
  }
}
resource "aws_flow_log" "aws-demo" {
  vpc_id          = "${aws_vpc.aws-demo.id}"
  iam_role_arn    = "<iam_role_arn>"
  log_destination = "${aws_s3_bucket.aws-demo.arn}"
  traffic_type    = "ALL"

  tags = {
    GeneratedBy      = "Accurics"
    ParentResourceId = "aws_vpc.aws-demo"
  }
}
resource "aws_s3_bucket" "aws-demo" {
  bucket        = "aws-demo_flow_log_s3_bucket"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled    = true
    mfa_delete = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
resource "aws_s3_bucket_policy" "aws-demo" {
  bucket = "${aws_s3_bucket.aws-demo.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "aws-demo-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <principal_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.aws-demo.id}/*"
    }
  ]
}
POLICY
}
resource "aws_flow_log" "aws-demo2" {
  vpc_id          = "${aws_vpc.aws-demo2.id}"
  iam_role_arn    = "<iam_role_arn>"
  log_destination = "${aws_s3_bucket.aws-demo2.arn}"
  traffic_type    = "ALL"

  tags = {
    GeneratedBy      = "Accurics"
    ParentResourceId = "aws_vpc.aws-demo2"
  }
}
resource "aws_s3_bucket" "aws-demo2" {
  bucket        = "aws-demo2_flow_log_s3_bucket"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled    = true
    mfa_delete = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
resource "aws_s3_bucket_policy" "aws-demo2" {
  bucket = "${aws_s3_bucket.aws-demo2.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "aws-demo2-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <principal_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.aws-demo2.id}/*"
    }
  ]
}
POLICY
}
resource "aws_flow_log" "aws-demo3" {
  vpc_id          = "${aws_vpc.aws-demo3.id}"
  iam_role_arn    = "<iam_role_arn>"
  log_destination = "${aws_s3_bucket.aws-demo3.arn}"
  traffic_type    = "ALL"

  tags = {
    GeneratedBy      = "Accurics"
    ParentResourceId = "aws_vpc.aws-demo3"
  }
}
resource "aws_s3_bucket" "aws-demo3" {
  bucket        = "aws-demo3_flow_log_s3_bucket"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled    = true
    mfa_delete = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
resource "aws_s3_bucket_policy" "aws-demo3" {
  bucket = "${aws_s3_bucket.aws-demo3.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "aws-demo3-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <principal_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.aws-demo3.id}/*"
    }
  ]
}
POLICY
}
resource "aws_flow_log" "aws-demo4" {
  vpc_id          = "${aws_vpc.aws-demo4.id}"
  iam_role_arn    = "<iam_role_arn>"
  log_destination = "${aws_s3_bucket.aws-demo4.arn}"
  traffic_type    = "ALL"

  tags = {
    GeneratedBy      = "Accurics"
    ParentResourceId = "aws_vpc.aws-demo4"
  }
}
resource "aws_s3_bucket" "aws-demo4" {
  bucket        = "aws-demo4_flow_log_s3_bucket"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled    = true
    mfa_delete = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
resource "aws_s3_bucket_policy" "aws-demo4" {
  bucket = "${aws_s3_bucket.aws-demo4.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "aws-demo4-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <principal_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.aws-demo4.id}/*"
    }
  ]
}
POLICY
}
resource "aws_flow_log" "aws-demo5" {
  vpc_id          = "${aws_vpc.aws-demo5.id}"
  iam_role_arn    = "<iam_role_arn>"
  log_destination = "${aws_s3_bucket.aws-demo5.arn}"
  traffic_type    = "ALL"

  tags = {
    GeneratedBy      = "Accurics"
    ParentResourceId = "aws_vpc.aws-demo5"
  }
}
resource "aws_s3_bucket" "aws-demo5" {
  bucket        = "aws-demo5_flow_log_s3_bucket"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled    = true
    mfa_delete = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
resource "aws_s3_bucket_policy" "aws-demo5" {
  bucket = "${aws_s3_bucket.aws-demo5.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "aws-demo5-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <principal_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.aws-demo5.id}/*"
    }
  ]
}
POLICY
}