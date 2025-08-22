terraform {
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

# Example: manage environment variables for an existing site
resource "netlify_environment_variable" "example" {
  site_id = var.netlify_site_id
  key     = "API_URL"
  value   = "https://api.example.com"
}

variable "netlify_token" {
  description = "Netlify API token"
  type        = string
}

variable "netlify_site_id" {
  description = "Existing Netlify site ID"
  type        = string
}
