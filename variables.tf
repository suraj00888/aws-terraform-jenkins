variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-08b5b3a93ed654d19" # Replace with your AMI ID
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "s3-bucket-name-123" # Replace with a unique bucket name
}

variable "db_identifier" {
  description = "RDS instance identifier"
  default     = "example-db"
}

variable "db_instance_class" {
  description = "RDS instance class"
  default     = "db.t2.micro"
}

variable "db_username" {
  description = "RDS username"
  default     = "admin"
}

variable "db_password" {
  description = "RDS password"
  default     = "S12345" # Replace with a secure password
}
