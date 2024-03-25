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
