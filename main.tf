resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "dev-vpc"
    }
  
}


resource "aws_subnet" "name1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "public_subnet"
    }
  
}

resource "aws_subnet" "name2" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "privete_subnet"
    }
  
}
