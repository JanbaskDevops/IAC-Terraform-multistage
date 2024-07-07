variable "environment" {
  description = "The environment name"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "East US"
}
