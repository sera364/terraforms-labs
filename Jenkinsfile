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
    Hostname `terraform output puplicec2`
    User ubuntu
    IdentityFile /var/jenkins_home/workspace/terraform/sarsora.pem
    AddKeysToAgent yes
    StrictHostKeyChecking=no

Host PrivateHost
    Hostname `terraform output privateec2`
    IdentityFile /var/jenkins_home/workspace/terraform/sarsora.pem
    User ubuntu
    AddKeysToAgent yes
    ProxyJump JumpHost
    StrictHostKeyChecking=no
EOF
'''
                    sh  '''
                      cat <<EOF >> .env
RDS_HOSTNAME=`terraform output -raw rds_hostname`
RDS_RDS_PORT=`terraform output -raw rds_port`
RDS_USERNAME=`terraform output -raw rds_username`
RDS_PASSWORD=`terraform output -raw password`
REDIS_HOSTNAME=`terraform output -raw redis_hostname`
REDIS_REDIS_PORT=`terraform output -raw redis_port`
EOF
'''
         sh 'ansible PrivateHost -m ping -i inventory --private-key ./sarsora.pem'
         sh ' ansible-playbook -i inventory --private-key ./sarsoa.pem playbook.yml'
                    


                }
        }
        }
    }
}
