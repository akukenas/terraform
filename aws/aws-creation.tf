variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-824c4ee2"
  instance_type = "t2.micro"
}