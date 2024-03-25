module "website" {
  source         = "genstackio/website/aws"
  version        = "0.4.0"
  name           = var.name
  bucket_name    = var.bucket_name
  zone           = var.dns_zone
  dns            = var.dns
  geolocations   = var.geolocations
  bucket_cors    = var.bucket_cors
  functions      = var.functions
  providers      = {
    aws     = aws
    aws.acm = aws.acm
  }
}
