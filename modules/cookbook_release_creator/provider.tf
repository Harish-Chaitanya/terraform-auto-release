provider "kubernetes" {

  host                   = var.kube_config.host
  token                  = var.kube_config.token
  cluster_ca_certificate = var.kube_config.cluster_ca_certificate
}
