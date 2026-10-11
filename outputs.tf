output "rate_limits_id" {
  description = "Map of id values across all rate_limits, keyed the same as var.rate_limits except keys with no id are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rate_limits_action" {
  description = "Map of action values across all rate_limits, keyed the same as var.rate_limits except keys with no action are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.action if v.action != null && length(v.action) > 0 }
}
output "rate_limits_bypass" {
  description = "Map of bypass values across all rate_limits, keyed the same as var.rate_limits except keys with no bypass are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.bypass if v.bypass != null && length(v.bypass) > 0 }
}
output "rate_limits_description" {
  description = "Map of description values across all rate_limits, keyed the same as var.rate_limits except keys with no description are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.description if v.description != null && length(v.description) > 0 }
}
output "rate_limits_disabled" {
  description = "Map of disabled values across all rate_limits, keyed the same as var.rate_limits except keys with no disabled are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.disabled if v.disabled != null }
}
output "rate_limits_match" {
  description = "Map of match values across all rate_limits, keyed the same as var.rate_limits except keys with no match are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.match if v.match != null && length(v.match) > 0 }
}
output "rate_limits_period" {
  description = "Map of period values across all rate_limits, keyed the same as var.rate_limits except keys with no period are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.period if v.period != null }
}
output "rate_limits_threshold" {
  description = "Map of threshold values across all rate_limits, keyed the same as var.rate_limits except keys with no threshold are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.threshold if v.threshold != null }
}
output "rate_limits_zone_id" {
  description = "Map of zone_id values across all rate_limits, keyed the same as var.rate_limits except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_rate_limit.rate_limits : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

