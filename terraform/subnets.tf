resource "google_compute_subnetwork" "PrivateSubnet" {
  name          = "private-subnet"
  network = google_compute_network.main.id
  ip_cidr_range = "10.0.0.0/18"
  region = var.region

  secondary_ip_range = [{
    range_name    = "pods-range"
    ip_cidr_range = "10.48.0.0/14"
  },{range_name    = "services-range"
    ip_cidr_range = "10.52.0.0/20"}]
}