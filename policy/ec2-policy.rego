package main

deny[msg] {
  input.resource_type == "aws_instance"
  input.change.after.instance_type != "t3.micro"
  msg = "Only t3.micro instance allowed"
}
