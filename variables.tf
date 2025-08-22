# Netlify Personal Access Token (from Netlify > User Settings > Applications)
variable "netlify_token" {
  description = "Netlify API token used for authentication"
  type        = string
  sensitive   = true
}

# The ID of your existing Netlify site (from Site settings > General > Site information)
variable "netlify_site_id" {
  description = "The unique ID of the existing Netlify site to manage"
  type        = string
}
