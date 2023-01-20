provider "aws" {
  profile    = "default"
  access_key = "AKIA43CSMBFCS5YDTIRG"
  secret_key = "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"
  region     = "eu-west-2"
}
resource "aws_instance" "teraserver" {
  count           = "1"
  ami             = "ami-084e8c05825742534"
  instance_type   = "t2.micro"
  key_name        = "Linux_London"
  subnet_id       = "subnet-07b2b19da18ebe100"
  security_groups = ["sg-0513eab779ca52a7d"]
  tags = {
    Name = "terform_server_London"
    Env  = "test"
  }
}

