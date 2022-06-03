pipeline {
    agent any
    tools {
      terraform 'terraform'
    }
    
    stages {
        stage('Terraform init') {
            steps {
                withAWS(credentials: 'sara-aws-new') { 
                    sh 'terraform init -reconfigure'
                    sh 'terraform apply  --var-file dev.tfvars --auto-approve'
                }
        }
        }
    }
}
