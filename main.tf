provider "netlify" {
  token = var.netlify_api_token
}

# Random suffix so site name is unique
resource "random_pet" "suffix" {}

# Create Netlify site
resource "netlify_site" "site" {
  name = "${var.site_name}-${random_pet.suffix.id}"
}

# Deploy contents of site/ folder
resource "netlify_deploy" "deploy" {
  site_id = netlify_site.site.id
  dir     = "${path.module}/site"
}
