resource "google_container_registry" "registry" {
  project  = "klara-comm-nonprod"
  location = "EU"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "terraform-test-static-bucket"
  project       = "klara-comm-nonprod"
  location      = "EU"
  force_destroy = true

  public_access_prevention = "enforced"
}