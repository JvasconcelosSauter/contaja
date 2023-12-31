module "vpc" {
  source = "../foundation"
}

resource "google_compute_router" "router" {
  name = ""
  region = var.region
  network = module.vpc.network
}

resource "google_compute_router_nat" "nat" {
  name = ""
  router = google_compute_router.router.name
  region = var.region
  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_IP_RANGES"
}