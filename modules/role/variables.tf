variable "name" {
  description = "The name prefix for these IAM resources"
  type        = "string"
}

variable "build_state" {
  description = "A variable to control whether resources should be built"
  type        = "string"
  default     = true
}

variable "aws_service" {
  description = "A list of AWS services allowed to assume this role.  Required if the aws_accounts variable is not provided."
  type        = "list"
  default     = []
}

variable "aws_account" {
  description = "A list of AWS accounts allowed to use this cross account role.  Required if the aws_services variable is not provided."
  type        = "list"
  default     = []
}

variable "external_id" {
  description = "The external ID to be used for any cross account roles."
  type        = "string"
  default     = ""
}

variable "inline_policy" {
  description = "A list of strings.  Each string should contain a json string to use for this inline policy"
  type        = "list"
  default     = []
}

variable "inline_policy_count" {
  description = "The number of inline policies to be applied to the role."
  type        = "string"
  default     = 0
}

variable "policy_arns" {
  description = "A list of managed IAM policies to attach to the IAM role"
  type        = "list"
  default     = []
}

variable "policy_arns_count" {
  description = "The number of managed policies to be applied to the role."
  type        = "string"
  default     = 0
}
