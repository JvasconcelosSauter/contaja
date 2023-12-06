module "vpc" {
  source = "../foundation"
}

resource "google_container_cluster" "private_cluster" {
  name = ""
  location = var.region

  network = module.vpc.network
  subnetwork = module.vpc.subnetwork


  ip_allocation_policy {
    cluster_secondary_range_name = "pods"
    services_secondary_range_name = "services"
  }

  private_cluster_config {
    enable_private_nodes = true
    enable_private_endpoint = false
    master_ipv4_cidr_block = var.ip_range
  }

}