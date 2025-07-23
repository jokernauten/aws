variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Enable S3 versioning"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Force destroy the bucket on deletion"
  type        = bool
  default     = false
}

variable "prevent_destroy" {
  description = "Prevent accidental deletion of the bucket"
  type        = bool
  default     = true
}

variable "create_lock_table" {
  description = "Whether to create a DynamoDB lock table"
  type        = bool
  default     = false
}

variable "lock_table_name" {
  description = "Name of the DynamoDB table used for locking"
  type        = string
  default     = "terraform-locks"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
