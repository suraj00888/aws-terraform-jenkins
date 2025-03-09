provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08b5b3a93ed654d19" # Replace with latest AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformInstance"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-bucket-12345"
}

resource "aws_dynamodb_table" "example" {
  name         = "terraform-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_lambda_function" "example" {
  function_name = "terraform-lambda-function"
  filename      = "lambda.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_role.arn
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}
