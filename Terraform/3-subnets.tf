resource "google_compute_subnetwork" "private" {
  name                     = "private"
  ip_cidr_range            = "10.16.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.32.0.0/16"
  }
  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.48.0.0/18"
  }
}
