output "route53_zone_associations_id" {
  description = "Map of id values across all route53_zone_associations, keyed the same as var.route53_zone_associations"
  value       = { for k, v in aws_route53_zone_association.route53_zone_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_zone_associations_owning_account" {
  description = "Map of owning_account values across all route53_zone_associations, keyed the same as var.route53_zone_associations"
  value       = { for k, v in aws_route53_zone_association.route53_zone_associations : k => v.owning_account if v.owning_account != null && length(v.owning_account) > 0 }
}
output "route53_zone_associations_vpc_id" {
  description = "Map of vpc_id values across all route53_zone_associations, keyed the same as var.route53_zone_associations"
  value       = { for k, v in aws_route53_zone_association.route53_zone_associations : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}
output "route53_zone_associations_vpc_region" {
  description = "Map of vpc_region values across all route53_zone_associations, keyed the same as var.route53_zone_associations"
  value       = { for k, v in aws_route53_zone_association.route53_zone_associations : k => v.vpc_region if v.vpc_region != null && length(v.vpc_region) > 0 }
}
output "route53_zone_associations_zone_id" {
  description = "Map of zone_id values across all route53_zone_associations, keyed the same as var.route53_zone_associations"
  value       = { for k, v in aws_route53_zone_association.route53_zone_associations : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

