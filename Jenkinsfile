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
//                     sh 'terraform output puplicec2'
//                     sh 'terraform output privateec2'
                    sh 'terraform output private_key > sarsora.pem'
                    sh 'chmod 400 sarsora.pem'
//                     sh ' cat sarsora.pem'
//                     sh ' echo $HOME'
                    sh '''
                     cat <<EOF >> ~/.ssh/config
Host JumpHost
    Hostname 54.191.113.225
    User ubuntu
    IdentityFile /var/jenkins_home/workspace/terraform/sarsora.pem
    AddKeysToAgent yes
    StrictHostKeyChecking=no

Host PrivateHost
    Hostname 10.0.2.221
    IdentityFile /var/jenkins_home/workspace/terraform/sarsora.pem
    User ubuntu
    AddKeysToAgent yes
    ProxyJump JumpHost
    StrictHostKeyChecking=no
EOF
'''
                    


                }
        }
        }
    }
}
