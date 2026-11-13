locals {
  bucket_name = "${var.channel_name}-fredy-bucket-${var.environment}-${var.region}"
  vpc_name    = "${var.environment}-VPC"
}