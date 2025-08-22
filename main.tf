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
      version = "~> 0.2.0"
    }
  }


provider "netlify" {
  token = var.netlify_token
}

# Use an existing site by ID
data "netlify_site" "this" {
  site_id = var.netlify_site_id
}
}
