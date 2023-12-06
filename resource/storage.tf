resource "google_storage_bucket" "my_bucket" {
  name          = "cloud-contaja"
  location      = "US"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 365
    }
    action {
      type = "Delete"
    }
  }
}
resource "google_storage_bucket" "my_bucket" {
  name          = "backup0-contaja"
  location      = "US"

  versioning {
    enabled = true
  }

  storage_class = "NEARLINE"

  lifecycle_rule {
    condition {
      age = 365
    }
    action {
      type = "Delete"
    }
  }
}