# Provider AWS #
 provider "aws" {
  region     = "eu-west-2"
  access_key = "PROVIDE-UR-ACCESS-KEY"
  secret_key = "PROVIDE-UR-SECRET-KEY"
}

# EC2 Instance Resource Creation in eu-west-2 #
resource "aws_instance" "myec2" {
   ami = "ami-0a13d44dccf1f5cf6"
   #instance_type = var.list
   instance_type = var.list[0]
}

# List type Variables 
variable "list"{
  type = list
  # List positions are [0,1,2]
  default =["m5.large","m5.xlarge","m4.large"]
}





