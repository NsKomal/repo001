provider "aws"{
region = "ap-south-1"
access_key = "AKIA3MDQY355LZXH5KS7"
secret_key = "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"
}

resource "aws_instance" "intsance-creation" {

ami = "ami-09ba48996007c8b50"
instance_type= "t2.micro"
vpc_security_group_ids = [aws_security_group.demo_sg.id ]
tags = {
Name = "test001"
}
}
