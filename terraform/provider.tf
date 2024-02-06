# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
} 

terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket-idp"
    prefix  = "terraform/state"
    
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.13.0"
    }
  }
}