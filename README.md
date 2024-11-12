# terraform-databricks-git-service-principal

Terraform module for creating a git repo and service principal.

This is described in the Databricks documentation [here](https://docs.databricks.com/en/repos/ci-cd-techniques-with-repos.html#use-sp-repos) but in the current version of the documentation there is a bug in the code example. This module is a working example of the code that should be used.

## Meta

### pre-commit

This repo uses [pre-commit](https://pre-commit.com/) to run some checks on the code before it is committed. To install pre-commit run:

```bash
pip install pre-commit
pre-commit install
```

### Conventional Commits

This repo uses [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) to format commit messages. It also uses [cocogitto](https://github.com/cocogitto/cocogitto) as part of the build.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | 1.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | 1.58.0 |
| <a name="provider_databricks.main"></a> [databricks.main](#provider\_databricks.main) | 1.58.0 |
| <a name="provider_databricks.sp"></a> [databricks.sp](#provider\_databricks.sp) | 1.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [databricks_git_credential.this](https://registry.terraform.io/providers/databricks/databricks/1.58.0/docs/resources/git_credential) | resource |
| [databricks_obo_token.this](https://registry.terraform.io/providers/databricks/databricks/1.58.0/docs/resources/obo_token) | resource |
| [databricks_repo.this](https://registry.terraform.io/providers/databricks/databricks/1.58.0/docs/resources/repo) | resource |
| [databricks_service_principal.this](https://registry.terraform.io/providers/databricks/databricks/1.58.0/docs/resources/service_principal) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | Account ID for Databricks | `string` | n/a | yes |
| <a name="input_databricks_host"></a> [databricks\_host](#input\_databricks\_host) | Databricks host | `string` | `"https://accounts.cloud.databricks.com"` | no |
| <a name="input_databricks_sp_host"></a> [databricks\_sp\_host](#input\_databricks\_sp\_host) | Databricks service provider host | `string` | n/a | yes |
| <a name="input_git_personal_access_token"></a> [git\_personal\_access\_token](#input\_git\_personal\_access\_token) | Personal Access Token for the git repository access | `string` | n/a | yes |
| <a name="input_git_provider"></a> [git\_provider](#input\_git\_provider) | One of the following: gitHub, gitHubEnterprise, bitbucketCloud, bitbucketServer, azureDevOpsServices, gitLab, gitLabEnterpriseEdition, awsCodeCommit | `string` | n/a | yes |
| <a name="input_git_url"></a> [git\_url](#input\_git\_url) | Git URL for the git repository | `string` | n/a | yes |
| <a name="input_git_usernmae"></a> [git\_usernmae](#input\_git\_usernmae) | Username for the git repository access | `string` | n/a | yes |
| <a name="input_service_principal_display_name"></a> [service\_principal\_display\_name](#input\_service\_principal\_display\_name) | Service principal display name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
