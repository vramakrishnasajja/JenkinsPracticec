provider "aws" {
  profile    = "terraform_user"
  access_key = "AKIA43CSMBFCTKTTR3RD"
  secret_key = "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"
  region     = "eu-west-2"
}
resource "aws_instance" "teraserver" {
  count           = "1"
  ami             = "ami-084e8c05825742534"
  instance_type   = "t2.micro"
  key_name        = "Jenkins"
  subnet_id       = "subnet-07b2b19da18ebe100"
  security_groups = ["sg-0783cf0495e16d6a1"]
  tags = {
    Name = "terform_second_server"
    Env  = "test"
  }
}
