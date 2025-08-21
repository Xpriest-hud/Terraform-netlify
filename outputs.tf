output "live_site_url" {
  description = "The URL of the deployed Netlify site"
  value       = netlify_site.site.ssl_url
}
