
variable "project_id" {
  description = "GCP project ID"
  type        = string
  default = "starry-seat-438408-p1"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west3"
}

variable "container_image" {
  description = "Container image URI for Cloud Run"
  type        = string
  default = "europe-west3-docker.pkg.dev/starry-seat-438408-p1/web-images/vite-react-app:latest"
}

# variable "db_instance_name" {
#   description = "Cloud SQL instance name"
#   type        = string
# }

# variable "db_name" {
#   description = "Database name in Cloud SQL"
#   type        = string
# }

# variable "db_user" {
#   description = "Database user"
#   type        = string
# }

# variable "db_password" {
#   description = "Database password"
#   type        = string
#   sensitive   = true
# }

variable "authorized_networks" {
  description = "Authorized IPs for Cloud SQL access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "api_image" {
  type = string
  default = "europe-west3-docker.pkg.dev/starry-seat-438408-p1/web-images/vite-react-app:latest"
}


variable "db_instance_name" {
  type = string
  default = "sql_db_instance"
}

variable "db_version" {
  type    = string
  default = "POSTGRES_13"
}

# variable "region" {
#   type = string
#   default     = "eu-west3"
# }

variable "db_tier" {
  type    = string
  default = "db-f1-micro"
}

variable "db_name" {
  type = string
  default = "sql_db_name"
}

variable "db_user" {
  type = string
  default = "test_user"
}

variable "db_password" {
  type      = string
  sensitive = true
  default = "Testing123!"
}
