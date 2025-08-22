output "site_id" {
  description = "The ID of the Netlify site"
  value       = netlify_site.this.id
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = netlify_site.this.name
}

output "site_url" {
  description = "The live HTTPS URL of the deployed site"
  value       = netlify_site.this.ssl_url
}
