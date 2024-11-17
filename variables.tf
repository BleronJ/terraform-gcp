
variable "project_id" {
  description = "GCP project ID"
  type        = string
 
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west3"
}

variable "container_image" {
  description = "Container image URI for Cloud Run"
  type        = string
}


variable "authorized_networks" {
  description = "Authorized IPs for Cloud SQL access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "api_image" {
  type = string
}


variable "db_instance_name" {
  type = string
  default = "sql_db_instance"
}

variable "db_version" {
  type    = string
  default = "POSTGRES_13"
}


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
}

variable "db_password" {
  type      = string
  sensitive = true
}
