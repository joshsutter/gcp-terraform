resource "google_compute_network" "default" {
  name = "${var.network}"
}

resource "google_compute_subnetwork" "default" {
  name          = "${var.network}-subnetwork-${var.subnetwork-region}"
  region        = "${var.subnetwork-region}"
  network       = "${google_compute_network.default.self_link}"
  ip_cidr_range = "10.10.0.0/24"
}
