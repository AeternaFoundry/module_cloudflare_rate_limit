resource "cloudflare_rate_limit" "rate_limits" {
  for_each = var.rate_limits

  action    = each.value.action
  match     = each.value.match
  period    = each.value.period
  threshold = each.value.threshold
  zone_id   = each.value.zone_id
}

