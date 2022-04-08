resource "aws_vpc" "ron" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "name" = "ron-vpc"
  }
}

resource "aws_subnet" "web_sn" {
  vpc_id     = aws_vpc.ron.id
  cidr_block = "10.0.0.0/27"

  tags = {
    Name = "web_sn"
  }
}

resource "aws_subnet" "app_sn" {
  vpc_id     = aws_vpc.ron.id
  cidr_block = "10.0.0.32/27"

  tags = {
    Name = "app_sn"
  }
}

resource "aws_subnet" "db_sn" {
  vpc_id     = aws_vpc.ron.id
  cidr_block = "10.0.0.64/28"

  tags = {
    Name = "db_sn"
  }
}