run "verify_ec2_instance" {
  command = plan

  assert {
    condition     = aws_instance.app1.instance_type == "t2.nano"
    error_message = "EC2 instance type should be t2.nano"
  }

  assert {
    condition     = aws_instance.app1.ami == "ami-0aa7d40eeae50c9a9"
    error_message = "EC2 instance AMI should be ami-0aa7d40eeae50c9a9"
  }

  assert {
    condition     = aws_instance.app1.tags.team == "app-team"
    error_message = "EC2 instance should have team tag set to app-team"
  }

  assert {
    condition     = aws_instance.app1.tags.costcentre == "engineering"
    error_message = "EC2 instance should have costcentre tag set to engineering"
  }
}
