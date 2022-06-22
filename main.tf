module "VPC" {
  source = "./vendor/modules/vpc"
  ENV = var.ENV
}

module "EKS" {
  source = "./vendor/modules/eks"
  ENV = var.ENV
  VPC_ID = module.VPC.VPC_ID
}
