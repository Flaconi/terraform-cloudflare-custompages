# Terraform module: Cloudflare Custom Pages


[![lint](https://github.com/flaconi/terraform-cloudflare-custompages/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-cloudflare-custompages/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-cloudflare-custompages/workflows/test/badge.svg)](https://github.com/flaconi/terraform-cloudflare-custompages/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-cloudflare-custompages.svg)](https://github.com/flaconi/terraform-cloudflare-custompages/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Example

`terraform.tfvars`:
```hcl
domain = "<domain.tld>"

```

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 3.33 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 3.33 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_api_token"></a> [api\_token](#input\_api\_token)

Description: The Cloudflare API token.

Type: `string`

### <a name="input_domain"></a> [domain](#input\_domain)

Description: Cloudflare domain to apply custom pages.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_custom_pages"></a> [custom\_pages](#input\_custom\_pages)

Description: List of Cloudflare error page objects.

Type:

```hcl
list(object({
    type  = string
    url   = string
    state = optional(string, "customized")
  }))
```

Default: `[]`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_custom_pages"></a> [custom\_pages](#output\_custom\_pages) | Created Cloudflare custom pages for the given zone. |
| <a name="output_domain"></a> [domain](#output\_domain) | Current zone information. |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2022 **[Flaconi GmbH](https://github.com/flaconi)**
