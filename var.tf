variable "service" {
  description = "The override, vanity service name (default: folder name)"
  default     = ""
}

variable "functions" {
  description = "List of maps of lambda functions"
  default     = [{}]
}
