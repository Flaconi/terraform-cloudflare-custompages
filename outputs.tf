output "domain" {
  description = "Current zone information."
  value       = data.cloudflare_zones.domain
}

output "custom_pages" {
  description = "Created Cloudflare custom pages for the given zone."
  value       = cloudflare_custom_pages.custom_pages
}
