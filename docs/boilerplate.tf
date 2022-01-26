module "ec2_tester" {
  source          = "git::https://github.com/SeanMcCann93/terraform-test-chamber.git"
  ami             = ""
  key_name        = ""
  name            = ""
  subnet_id       = ""
  vpc_sg          = [""]
  ebs_optimized   = false
  encrypt_storage = true
  instance_type   = "t2.micro"
  protect         = false
  public_ip       = false
  storage_size    = 5
  storage_tags = {
    "key" = "value"
  }
  tags = {
    "key" = "value"
  }
  user_data       = null
}