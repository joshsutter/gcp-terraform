resource "google_compute_instance" "default" {
  count        = 2
  name         = "vm-${count.index}"
  machine_type = "${var.vm_type["512gig"]}"
  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-postgresql",
    "${var.network}-firewall-openshift-console",
    "${var.network}-firewall-secure-forward",
  ]

  boot_disk {
    initialize_params {
      image = "centos-7-v20190515"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.default.name}"

    access_config {
      // Ephemeral IP
    }
  }
}
