variable "gcp_region" {
  default = "us-west1"
}

variable "gcp_zone" {
  default = "us-west1-b"
}

variable "gcp_project" {
  default = "project"
}

variable "initial_node_count" {
  description = "Number of worker VMs to initially create"
  default = 1
}

variable "master_username" {
  description = "Username for accessing the Kubernetes master endpoint"
  default = "username"
}

variable "master_password" {
  description = "Password for accessing the Kubernetes master endpoint"
  default = "longpasswordthatshouldbegood"
}

variable "node_machine_type" {
  description = "GCE machine type"
  default = "g1-small"
}

variable "node_disk_size" {
  description = "Node disk size in GB"
  default = "20"
}

variable "environment" {
  description = "value passed to Environment tag and used in name of Vault auth backend later"
  default = "gke-dev"
}
