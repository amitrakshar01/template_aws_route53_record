provider "aws" {
  region = "eu-central-1"
}

resource "aws_route53_zone" "primary" {
  name = "example.com"
}

resource "aws_route53_record" "txt" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.example.com"
  type    = "TXT"
  ttl     = 200
}
