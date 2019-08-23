module "eks" {
  source                = "terraform-aws-modules/eks/aws"
  cluster_name          = "test-eks-cluster"
  subnets               = ["subnet-81e9c7e9", "subnet-61cf002d", "subnet-8596f2ff"]
  tags                  = "${map("Environment", "test")}"
  vpc_id                = "vpc-49101621"
}
