variable "region" {
  default = "us-west1-b"
}

variable "project-name" {
  default = "project-name"
}

variable "subnetwork-region" {
  default = "us-west1"
}
variable "network" {
  default = "terraform-network"
}

variable "vm_type" {
  default {
    "512gig"     = "f1-micro"
    "1point7gig" = "g1-small"
  }
}

variable "os" {
  default {
    "centos7"         = "centos-7-v20190515"
    "ubuntu-1704"     = "ubuntu-1704-zesty-v20170811"
  }
}