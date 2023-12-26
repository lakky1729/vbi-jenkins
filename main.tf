provider "aws" {
  region = var.aws_region
}


resource "aws_instance" "jenkins_master" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_pair

  tags = {
    Name = "jenkins-master"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt install openjdk-11-jre-headless",
      "sudo apt-get update -y",
       "wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -",
      "sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'",
      
      "sudo apt-get update -y",
      "sudo apt-get install jenkins",
      "sudo systemctl start jenkins",
      "sudo systemctl enable jenkins"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"  # Update with the appropriate username for your AMI
      private_key = file("C:/Users/LENOVO/Desktop/jenkins-pem1.pem")  # Update with the path to your private key
      host        = self.public_ip
    }
  }
}

resource "aws_instance" "jenkins_slave_dev" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_pair

  tags = {
    Name = "jenkins_slave_dev"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt install openjdk-11-jre-headless",
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"  # Update with the appropriate username for your AMI
      private_key = file("C:/Users/LENOVO/Desktop/jenkins-pem1.pem")  # Update with the path to your private key
      host        = self.public_ip
    }
  }
}

resource "aws_instance" "jenkins_slave_qa" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_pair

  tags = {
    Name = "jenkins_slave_qa"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt install openjdk-11-jre-headless",
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"  # Update with the appropriate username for your AMI
      private_key = file("C:/Users/LENOVO/Desktop/jenkins-pem1.pem")  # Update with the path to your private key
      host        = self.public_ip
    }
  }
}

resource "aws_instance" "jenkins_slave_prod" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_pair

  tags = {
    Name = "jenkins_slave_prod"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt install openjdk-11-jre-headless",
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"  # Update with the appropriate username for your AMI
      private_key = file("C:/Users/LENOVO/Desktop/jenkins-pem1.pem")  # Update with the path to your private key
      host        = self.public_ip
    }
  }
}
