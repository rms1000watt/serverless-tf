variable "service" {
  description = "The override, vanity service name (default: folder name)"
  default     = ""
}

variable "stage" {
  description = "The stage of lambda functions and api gateway across everything in the module"
  default     = "dev"
}

variable "http_policy" {
  description = "A policy to add to all API Gateway requests (ie. whitelist cidr block"
  default     = ""
}

variable "functions" {
  description = "List of maps of lambda functions"
  default     = [{}]
}
