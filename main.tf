variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_04_ff71303a01eb-9562-12756"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc_cristobal1" {
  name                    = "example-vpc"
  auto_create_subnetworks = true 
}
