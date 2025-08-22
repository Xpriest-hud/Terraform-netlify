terraform {
  cloud {
    organization = "HUG-NETLIFY-SITE"     # Replace with your HCP Terraform organization
    workspaces {
      name = "netlify-website"     # Replace with your HCP Terraform workspace
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# Configure Netlify provider
provider "netlify" {
  token = var.netlify_api_token
}

# Random suffix to ensure unique site name
resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "netlify_site" "my_unique_site" {
  name = "${var.site_name_prefix}-${random_string.unique_suffix.result}"
}

