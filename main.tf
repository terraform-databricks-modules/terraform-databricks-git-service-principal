# Create the Databricks service principal
resource "databricks_service_principal" "this" {
  display_name = var.service_principal_display_name
}

# Get token from the service principal
resource "databricks_obo_token" "this" {
  provider         = databricks.main
  application_id   = databricks_service_principal.this.application_id
  comment          = "PAT on behalf of the service principal"
  lifetime_seconds = 3600
}

# Create the Databricks provider with the service principal
provider "databricks" {
  auth_type = "pat"
  alias     = "sp"
  host      = var.databricks_sp_host
  token     = databricks_obo_token.this.token_value
}

# Create the Databricks repo under the service principal
resource "databricks_repo" "this" {
  provider = databricks.sp
  url      = var.git_url
}

# Create the Databricks git credential under the service principal
resource "databricks_git_credential" "this" {
  provider              = databricks.sp
  git_username          = var.git_username
  git_provider          = var.git_provider
  personal_access_token = var.git_personal_access_token
  depends_on            = [databricks_obo_token.this]
}
