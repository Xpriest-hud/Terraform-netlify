output "site_id" {
  value = data.netlify_site.this.id
}

output "site_name" {
  value = data.netlify_site.this.name
}

output "site_url" {
  value = data.netlify_site.this.url
}
