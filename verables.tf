variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"  # Change to your preferred region
}

variable "ami_id" {
  description = "AMI ID for Jenkins instances"
  default     = "ami-08e2c1a8d17c2fe17"  # Replace with your AMI ID
}

variable "key_pair" {
  description = "AWS key pair name"
  default     = "jenkins-pem1"  # Replace with your key pair name
}
  # Specify the key pair you want to use


// Add other variables as needed