resource "aws_eks_cluster" "aws_eks_cluster_1" {
  tags     = merge(var.tags, {})
  role_arn = "arn:aws:iam::010880705595:role"
  name     = "demo_cluster"

  encryption_config {
    provider {
      key_arn = "arn:aws:iam::010880705595:role"
    }
    resources = [
      "secrets",
    ]
  }

  vpc_config {
    endpoint_private_access = true
    security_group_ids = [
      "sg-023548d36c0334278",
    ]
    subnet_ids = [
      "subnet-de4604bb",
      "subnet-55bcb478",
    ]
  }
}

