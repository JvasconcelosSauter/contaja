resource "google_compute_network" "vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
  project = var.project_id

  depends_on = [ google_project.mk_project, google_project_service.apis ]
}

resource "google_compute_subnetwork" "subnetwork" {
  name = var.subnetwork_name
  ip_cidr_range = var.ip_range
  network = google_compute_network.vpc.name
  region = var.region
  project = var.project_id

  depends_on = [ google_compute_network.vpc ]
}