variable "api_token" {
  description = "The Cloudflare API token."
  type        = string
}
variable "domain" {
  description = "Cloudflare domain to apply custom pages."
  type        = string
}
variable "custom_pages" {
  description = "List of Cloudflare error page objects."
  type = list(object({
    type  = string
    url   = string
    state = optional(string, "customized")
  }))
  default = []
}
