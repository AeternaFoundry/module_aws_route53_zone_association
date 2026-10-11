variable "route53_zone_associations" {
  description = <<EOT
Map of route53_zone_associations, attributes below
Required:
    - vpc_id
    - zone_id
Optional:
    - vpc_region
EOT

  type = map(object({
    vpc_id     = string
    zone_id    = string
    vpc_region = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

