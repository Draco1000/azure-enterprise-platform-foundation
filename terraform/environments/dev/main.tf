locals {
  resource_group_name = "rg-${var.project_name}-${var.environment}-weu"

  common_tags = {
    project     = var.project_name
    environment = var.environment
    managed_by  = "terraform"
    purpose     = "portfolio"
  }
}
