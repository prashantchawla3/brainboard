resource "aws_eks_cluster" "aws_eks_cluster_1" {
  tags = merge(var.tags, {})
  name = "demo_cluster"

  vpc_config {
    endpoint_private_access = true
  }
}

