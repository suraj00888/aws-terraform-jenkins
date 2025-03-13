output "ec2_public_ip" {
  value = aws_instance.example.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.example.bucket
}

output "rds_endpoint" {
  value = aws_db_instance.example.endpoint
}

output "iam_role_name" {
  value = aws_iam_role.example.name
}
