provider "aws" {
  profile = "SVRK"
  access_key = "AKIA43CSMBFCWQMKRUEZ"
  secret_key = "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"
  region     = "eu-west-2"
}
resource "aws_instance" "teraserver" {
  count           = "1"
  ami             = "ami-084e8c05825742534"
  instance_type   = "t2.micro"
  key_name        = "Server"
  subnet_id       = "subnet-07b2b19da18ebe100"
  security_groups = ["sg-0a29d7d6c30e7b2aa"]
  tags = {
    Name = "terform_server_London_other"
    Env  = "test"
  }
}


