terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.33"
    }
  }
  required_version = "~> 1.3"
}
