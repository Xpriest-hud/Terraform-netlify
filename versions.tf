terraform {
  cloud {

    organization = "HUG-NETLIFY-SITE"   # 🔹 Replace with your HCP Terraform org name

    workspaces {
      name = "netlify-Website"        # 🔹 Replace with your HCP Terraform workspace name
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}
