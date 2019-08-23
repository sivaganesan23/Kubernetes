// Create Route 53 hosted zone

module "eks" {
  source                = "terraform-aws-modules/eks/aws"
  cluster_name          = "test-eks-cluster"
  subnets               = ["subnet-dcf4e1b5", "subnet-904adcdd", "subnet-29d59f52"]
  tags                  = "${map("Environment", "test")}"
  vpc_id                = "vpc-4271752b"
}