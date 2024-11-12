provider "databricks" {
  auth_type  = "oauth-m2m"
  account_id = var.databricks_account_id
  host       = var.databricks_host
}
