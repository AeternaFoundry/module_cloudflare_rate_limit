variable "rate_limits" {
  description = <<EOT
Map of rate_limits, attributes below
Required:
    - action
    - match
    - period
    - threshold
    - zone_id
EOT

  type = map(object({
    action = object({
      mode = optional(string)
      response = optional(object({
        body         = optional(string)
        content_type = optional(string)
      }))
      timeout = optional(number)
    })
    match = object({
      headers = optional(list(object({
        name  = optional(string)
        op    = optional(string)
        value = optional(string)
      })))
      request = optional(object({
        methods = optional(list(string))
        schemes = optional(list(string))
        url     = optional(string)
      }))
      response = optional(object({
        origin_traffic = optional(bool)
      }))
    })
    period    = number
    threshold = number
    zone_id   = string
  }))
}

