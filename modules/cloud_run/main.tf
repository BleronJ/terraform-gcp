resource "google_cloud_run_service" "api_service" {
  name     = var.api_name
  location = var.region

  template {
    spec {
      containers {
        image = var.image

        env {
          name  = "DB_HOST"
          value = var.db_connection_name
        }
        env {
          name  = "DB_NAME"
          value = var.db_name
        }
        env {
          name  = "DB_USER"
          value = var.db_user
        }
        env {
          name  = "DB_PASSWORD"
          value = var.db_password
        }
      }
    }
  }

  autogenerate_revision_name = true

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "invoker" {
  service    = google_cloud_run_service.api_service.name
  location   = google_cloud_run_service.api_service.location
  role       = "roles/run.invoker"
  member     = var.invoker_member
}

# resource "google_service_account" "terraform_service_account" {
#   account_id   = "terraform-service-account"
#   display_name = "terraform-service-account"
# }


resource "google_project_iam_member" "terraform_service_account_run_admin" {
  project = var.project_id
  member  = "serviceAccount:terraform-service-account@${var.project_id}.iam.gserviceaccount.com"
  role    = "roles/run.admin"
}

resource "google_project_iam_member" "terraform_service_account_security_admin" {
  project = var.project_id
  member  = "serviceAccount:terraform-service-account@${var.project_id}.iam.gserviceaccount.com"
  role    = "roles/iam.securityAdmin"
}

resource "google_project_service" "cloud_run_api" {
  project = var.project_id
  service = "run.googleapis.com"
}
