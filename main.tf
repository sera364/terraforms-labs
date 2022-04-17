module "network"{
    source = "./network"
    workspace_name =  var.workspace_name
    private1_cidr = var.private1_cidr
    region = var.region
    private2_cidr = var.private2_cidr
    public1_cidr  = var.public1_cidr
    public2_cidr = var.public2_cidr
    vpc_cidr = var.vpc_cidr


}
