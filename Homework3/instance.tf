resource "aws_instance" "web0" {
  ami           = "ami-07c5ecd8498c59db5"
  instance_type = "t2.micro"

  
} 


resource "aws_instance" "web" {
  count                  = 3
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  availability_zone      = element(var.zones, count.index)
  key_name               = aws_key_pair.Bastion.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = file("apache.sh")
  tags = {
    Name = var.name[count.index]
  }
}