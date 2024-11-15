provider "google" {
  # The project ID to be used
  project = var.project_id

  # The region to be used for resources
  region  = var.region  # You can change this to your preferred region

  # Optional: You can specify the credentials file (if not using the default)
  credentials = file("./starry-seat-438408-p1-cd64c96fb166.json")

  # Optional: If you want to define the API version explicitly, you can use this argument
  # version = "3.5.0"  # Uncomment and specify version if needed
}

# Configure the google-beta provider
provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = file("./starry-seat-438408-p1-cd64c96fb166.json")  # Use the same path or a different one if needed
}