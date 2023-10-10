resource "random_pet" "name" {

}

resource "aws_security_group" "sg-ec2" {
  name        = "sg_${random_pet.name.id}"
  description = "security group to allow inbound traffic to ec2"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = -1
  }

}

resource "aws_security_group_rule" "allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg-ec2.id
}

resource "aws_security_group_rule" "allow_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg-ec2.id
}

resource "aws_key_pair" "ec2-kp" {
  key_name   = "kp_${random_pet.name.id}"
  public_key = var.public_key
}

resource "aws_instance" "ec2" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_type
  vpc_security_group_ids = [aws_security_group.sg-ec2.id]
  key_name               = aws_key_pair.ec2-kp.key_name
  user_data              = file("user-script.sh")

  tags = {
    Name = random_pet.name.id
  }
}