resource "aws_instance" "myec2" {
  ami           = "ami-0a3c3a20c09d6f377" # us-west-2
  instance_type = "t2.micro"
}
