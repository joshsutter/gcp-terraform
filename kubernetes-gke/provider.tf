provider "google" {
 credentials = "${file("/path_to_key_file.json")}"
 project     = "project-name"
 region      = "us-west"
 zone      = "us-west1-b"
}