#Configure the AWS Provider


provider "aws" {
access_key= "AKIAZU3OVXTIA5IINTNW"
secret_key= "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"
  version = "~> 2.0"
  region  = "us-east-1"
}


resource "aws_instance" "Apache-webserver" {
ami = "ami-07d0cf3af28718ef8"
instance_type = "t2.micro"
key_name = "terraform"

}
data "aws_instance" "Apache-webserver" {
  #instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-07d0cf3af28718ef8"]
         }
  }
  
  