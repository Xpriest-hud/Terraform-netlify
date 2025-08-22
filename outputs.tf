output "site_id" {
  description = "The Netlify site ID"
  value       = data.netlify_site.this.id
}

output "site_name" {
  description = "The Netlify site name"
  value       = data.netlify_site.this.name
}

output "site_url" {
  description = "The Netlify site live URL"
  value       = data.netlify_site.this.ssl_url
}
