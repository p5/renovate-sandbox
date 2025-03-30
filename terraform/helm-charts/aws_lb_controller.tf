resource "helm_release" "aws_lb_controller" {
  name             = "aws-load-balancer-controller"
  repository       = "https://aws.github.io/eks-charts"
  chart            = "aws-load-balancer-controller"
  version          = "1.12.0"
  namespace        = "sample"
  create_namespace = true
  values = [yamlencode({
    replicaCount = 1
  })]
}
