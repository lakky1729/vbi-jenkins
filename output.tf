output "jenkins_master_ip" {
  value = aws_instance.jenkins_master.public_ip
}

output "jenkins_slave_dev_ip" {
  value = aws_instance.jenkins_slave_dev.public_ip
}

output "jenkins_slave_qa_ip" {
  value = aws_instance.jenkins_slave_qa.public_ip
}

output "jenkins_slave_prod_ip" {
  value = aws_instance.jenkins_slave_prod.public_ip
}
