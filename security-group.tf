resource "aws_security_group" "acesso-ssh" {
  name = "acesso-ssh"
  description = "Liberando acesso SSH para o grupo"
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"

    cidr_blocks = var.cdir_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso-ssh-us-east-1" {
  provider = aws.us-east-1
  name = "acesso-ssh-us-east-1"
  description = "Liberando acesso SSH para o grupo"
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"

    cidr_blocks = var.cdir_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}