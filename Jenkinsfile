pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_KEY')
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/suraj00888/aws-terraform-jenkins.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Plan Terraform Changes') {
            steps {
                bat 'terraform plan'
            }
        }

        stage('Apply Terraform Changes') {
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}
