provider "google" {
 credentials = "${file("filelocation.json")}"
 project     = "project-name"
 region      = "us-west"
 zone      = "us-west1-b"
}