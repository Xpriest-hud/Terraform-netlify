variable "netlify_api_token" {
  description = "Netlify API Token"
  type        = string
  sensitive   = true
}

variable "site_name" {
  description = "Name of the Netlify site"
  type        = string
  default     = "terraform-demo-site"
}
