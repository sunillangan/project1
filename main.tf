provider "aws" {
	  region  = "us-east-1"
	}
	
	
	resource "aws_security_group" "allow_tls" {
	  name = "shah-security_group"
	  description = "Allow TLS inbound traffic"
	
	  ingress {
	    from_port = 443
	    to_port = 443
	    protocol = "tcp"
	    cidr_blocks = var.vpn_ip
	  }
	
	  ingress {
	    from_port = 80
	    to_port = 80
	    protocol = "tcp"
	    cidr_blocks = var.vpn_ip
	  }
	
	  ingress {
	    from_port = 8080
	    to_port = 8080
	    protocol = "tcp"
	    cidr_blocks = var.vpn_ip
	  }
	
	  egress {
	    from_port        = 0
	    to_port          = 0
	    protocol         = "-1"
	    cidr_blocks      = ["0.0.0.0/0"]
	    ipv6_cidr_blocks = ["::/0"]
	  }
	
	  tags = {
	    Name = "allow_tls"
	  }
	}
