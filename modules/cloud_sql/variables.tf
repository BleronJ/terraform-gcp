variable "db_instance_name" {
  type = string
  default = "sql_db_instance"
}

variable "db_version" {
  type    = string
  default = "POSTGRES_13"
}

variable "region" {
  type = string
  default     = "eu-west3"
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
  default = "test_user"
}

variable "db_password" {
  type      = string
  sensitive = true
  default = "Testing123!"
}
