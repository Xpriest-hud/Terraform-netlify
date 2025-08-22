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
      version = "~> 0.2.0"
    }
  }
}

provider "netlify" {
  token     = var.netlify_token
}

# Reference your existing Netlify site
data "netlify_site" "this" {
  site_id = var.netlify_site_id
}

# Example: manage environment variables for the site
resource "netlify_environment_variable" "example" {
  site_id = var.netlify_site_id
  key     = "API_URL"
  value   = "https://api.example.com"
}

