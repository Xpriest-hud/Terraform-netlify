terraform {
  cloud {
    organization = "HUG-NETLIFY-SITE" # Replace with your HCP Terraform organization
    workspaces {
      name = "netlify-website" # Replace with your HCP Terraform workspace
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }
}

provider "netlify" {
  api_token = var.netlify_token
}

# Optionally: reference your existing Netlify site
data "netlify_site" "this" {
  site_id = var.netlify_site_id
}

# Example: manage environment variables for the existing site
resource "netlify_environment_variable" "example" {
  site_id = var.netlify_site_id
  key     = "API_URL"
  value   = "https://api.example.com"
}

# Variables
variable "netlify_token" {
  description = "Netlify API token"
  type        = string
}

variable "netlify_site_id" {
  description = "Existing Netlify site ID"
  type        = string
}
