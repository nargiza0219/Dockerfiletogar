provider "google" {
  #   credentials = file("path/to/service-account-key.json") 
  project = "iron-country-417723"
  region  = "us-central1"
}

resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-central1"
  repository_id = "app-chart"
  description   = "docker repository"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}