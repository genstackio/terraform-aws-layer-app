# AWS App Terraform module

Terraform module which creates the resources to host a web app on AWS.

## Usage

```hcl
module "admin" {
  source      = "genstackio/app/aws"

  bucket_name = "s3"
  dns         = "app.mydomain.com"
  dns_zone    = "id-of-the-route53-zone"
}
```
