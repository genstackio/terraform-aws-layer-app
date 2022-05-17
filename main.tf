module "website" {
  source         = "genstackio/website/aws"
  version        = "0.3.2"
  name           = var.name
  bucket_name    = var.bucket_name
  zone           = var.dns_zone
  dns            = var.dns
  geolocations   = var.geolocations
  providers      = {
    aws     = aws
    aws.acm = aws.acm
  }
}
