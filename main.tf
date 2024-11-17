module "cloud_sql" {
  source          = "./modules/cloud_sql"
  db_instance_name = "example-db-instance"
  db_version       = "POSTGRES_13"
  region           = var.region
  db_tier          = "db-f1-micro"
  db_name          = "exampledb"
  db_user          = var.db_user
  db_password      = var.db_password
}

module "cloud_run" {
  source             = "./modules/cloud_run"
  api_name           = "example-api"
  region             = var.region
  image              = var.api_image
  db_connection_name = module.cloud_sql.connection_name
  db_name            = module.cloud_sql.db_name
  db_user            = module.cloud_sql.db_user
  db_password        = var.db_password 
  invoker_member     = "allUsers"  
  project_id = var.project_id
}

