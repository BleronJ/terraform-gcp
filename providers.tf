provider "google" {
 
  project = var.project_id

  region  = var.region  
  credentials = file("./starry-seat-438408-p1-32f914a2dfed.json")


}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = file("./starry-seat-438408-p1-32f914a2dfed.json")  
}