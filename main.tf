# ==============================================================================
# New Relic Synthetics Secure Credentials – Terraform Configuration
#
# See README.md file for more information.
# ==============================================================================

# ------------------------------------------------------------------------------
# Provider Configuration
# https://github.com/newrelic/terraform-provider-newrelic/blob/main/CHANGELOG.md
# ------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 3.21.2"
    }
  }
  
}

# ------------------------------------------------------------------------------
# Input Variable Declaration
# ------------------------------------------------------------------------------

variable "csv_path" {
  description = "Path to the CSV file containing the list of secrets (key-value pairs) with which to generate Secure Credentials."
  type        = string
  default     = "./data.csv"
}

data "external" "env_values" {
  program = ["bash", "read_env.sh"]
}
# ------------------------------------------------------------------------------
# Local Variable Definition
# ------------------------------------------------------------------------------

locals {
  secrets = csvdecode(file(var.csv_path))
  evaluateNonEmptyString = {
    for key, value in data.external.env_values.result :
    replace(key, "[^A-Za-z0-9]", "") => value != "" ? value : null
  }
}

# ------------------------------------------------------------------------------
# Main Terraform Configuration
# ------------------------------------------------------------------------------

# https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_secure_credential
resource "newrelic_synthetics_secure_credential" "credential" {
  for_each = {
    for index, record in local.secrets :
    record.key => record
  }
  key         = each.value.key
  value       = local.evaluateNonEmptyString[each.value.key]
  description = each.value.description
}

# ------------------------------------------------------------------------------
# Output Variable Declaration
# ------------------------------------------------------------------------------

//
