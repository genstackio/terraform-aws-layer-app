variable "name" {
  type    = string
  default = "app"
}
variable "bucket_name" {
  type = string
}
variable "geolocations" {
  type    = list(string)
  default = []
}
variable "dns" {
  type = string
}
variable "dns_zone" {
  type = string
}
variable "apex_redirect" {
  type    = bool
  default = false
}
variable "bucket_cors" {
  type    = bool
  default = false
}
variable "functions" {
  type = list(object({
    event_type   = string
    function_arn = string
  }))
  default = []
}
variable "response_headers_policy" {
  type    = string
  default = null
}
variable "origin_request_policy" {
  type    = string
  default = null
}
variable "cache_policy" {
  type    = string
  default = null
}
variable "price_class" {
  type    = string
  default = "PriceClass_100"
}
