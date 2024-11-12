variable "databricks_account_id" {
  description = "Account ID for Databricks"
  type        = string
}

variable "databricks_host" {
  description = "Databricks host"
  type        = string
  default     = "https://accounts.cloud.databricks.com"
}

variable "databricks_sp_host" {
  description = "Databricks service provider host"
  type        = string
}

variable "service_principal_display_name" {
  description = "Service principal display name"
  type        = string
}

variable "git_url" {
  description = "Git URL for the git repository"
  type        = string
}

variable "git_usernmae" {
  description = "Username for the git repository access"
  type        = string
}

variable "git_personal_access_token" {
  description = "Personal Access Token for the git repository access"
  type        = string
}

variable "git_provider" {
  description = "One of the following: gitHub, gitHubEnterprise, bitbucketCloud, bitbucketServer, azureDevOpsServices, gitLab, gitLabEnterpriseEdition, awsCodeCommit"
  type        = string
  validation {
    condition = contains(["gitHub", "gitHubEnterprise", "bitbucketCloud", "bitbucketServer", "azureDevOpsServices", "gitLab", "gitLabEnterpriseEdition", "awsCodeCommit"], var.git_provider)
    error_message = "Invalid git provider"
  }
}
