# Jenkins Pipeline 

## Infrastructure
infra structure is built on aws with terraform tool and it consists of:
* 1 VPC
* 4 Subnets 2 Public and 2 Private
* Internet Gateway
* 2 Nat Gateway in the Public Subnets
* Bastion host in the Public Subnet
* EC2 instance in Private Subnet
* Load balancer to expose the private instace 
* RDS mysql
* Redis

# Jenkins Configurations

## Plugins used 
* `Pipeline: AWS Steps` to add aws iam user creditionals 
* `Terraform` so jenkins can use terraform 
* `Ansible` so jenkins can use ansible 

# Pipelines 
* ## terraform pipeline:
     * that build the infrastructure on aws from this repo we are in 
     
     * then ansible will configure the the private intance to  be ready as jenkins slave 
     by installing `open-jdk` and copy `agent.jar` file to it

     * config file is created by script in `jenkinsfile` and its dynamic 

     * the config file that created and `ansbile` use to reach the 
     private instance from bastion host: 

    

     
    ### then from jenkins console connect the private instance 
    !
    ### now its connected and ready to host deployments
    

* ## Node-app Deployment pipeline


    * jenkins deploy the app from this [forked repo](https://github.com/abdulmageed02/jenkins_nodejs_example/tree/rds_redis) 

    * the app need Enviroment variables and their values are created by `terraform` then copied to the private instance using `ansible`

    * this pipeline is triggered by the completeion of the `terraform pipeline`

   * ## you can test the deployment  mysql connection form  [here](http://nlb-73689953d90cd68f.elb.us-west-2.amazonaws.com/db)

   * ## and the redis connecton from [here](http://nlb-73689953d90cd68f.elb.us-west-2.amazonaws.com/redis)
