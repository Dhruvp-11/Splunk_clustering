
resource "aws_instance" "web" {
  count= 2 # here we are creating 2 instance 
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  key_name = "mykeys3"
  security_groups = ["splunkrule"]

  tags = {
    Name = "Indexer-${count.index+1}"
  }
}
