variable "schedule_expression" {
  description = "how often to run the command"
  type        = string
  default     = "rate(60 minutes)"
}

