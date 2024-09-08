module "website" {
  source         = "genstackio/website/aws"
  version        = "0.4.1"
  name           = var.name
  bucket_name    = var.bucket_name
  zone           = var.dns_zone
  dns            = var.dns
  apex_redirect  = var.apex_redirect
  price_class    = var.price_class
  geolocations   = var.geolocations
  bucket_cors    = var.bucket_cors
  functions      = var.functions
  providers      = {
    aws     = aws
    aws.acm = aws.acm
  }
  response_headers_policy_id = var.response_headers_policy
  origin_request_policy_id   = var.origin_request_policy
  cache_policy_id            = var.cache_policy
  error_403_page_path        = var.error_403_page_path
  error_404_page_path        = var.error_404_page_path
  error_403_page_code        = var.error_403_page_code
  error_404_page_code        = var.error_404_page_code
}
