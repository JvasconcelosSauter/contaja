output "network" {
  value = google_compute_network.vpc.self_link
}
output "subnetwork" {
  value = google_compute_subnetwork.subnetwork.self_link
}