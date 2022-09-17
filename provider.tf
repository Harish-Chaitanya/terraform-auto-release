
provider "digitalocean" {
}

provider "kubernetes" {
  host                   = local.kube_config.host
  token                  = local.kube_config.token
  cluster_ca_certificate = local.kube_config.cluster_ca_certificate
}

provider "helm" {
  kubernetes {
    host                   = local.kube_config.host
    token                  = local.kube_config.token
    cluster_ca_certificate = local.kube_config.cluster_ca_certificate
  }
}

provider "cloudflare" {
  api_token = local.cloudflare_config.api_token
}
