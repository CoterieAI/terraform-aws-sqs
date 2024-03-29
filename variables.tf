variable "sqs_name" {
  description = "name for simple queue service"
  type        = string
  default     = "s3-event-queue"
}

variable "policy" {
  description = "sqs policy"
  default     = "default-policy.json"

}

variable "bucket_arn" {
  description = "bucket.arn value | module.aws_s3_bucket.bucket_arn"
  type        = string
  default     = "null"
}

variable "bucket_id" {
  description = "bucket.id value | module.aws_s3_bucket.bucket_id"
  type        = string
  default     = "null"
}

variable "dependency" {
  description = "sqs depencies, bucket, notification ect.| module.aws_s3_bucket.bucket"
  type        = list(string)
  default     = []
}

variable "region" {
  description = "aws region"
  type        = string
  default     = "us-west-1"
}

variable "access_key" {
  description = "aws access key"
  type        = string
  default     = "null"
}

variable "secret_key" {
  description = "aws secret key"
  type        = string
  default     = "null"
}

# tags value for IaC and env: dev, prod or test
variable "tag_name" {
  default = "terraform-IaC"
}
variable "env_name" {
  default = "dev"
}
