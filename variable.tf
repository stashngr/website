# The application's name
variable "app" {
  default = "stashng"
}

# The environment that is being built
variable "environment" {
  default = "prod"
}

variable "region" {
  default = "eu-central-1"
}

variable "logs_retention_in_days" {
  type        = number
  default     = 90
  description = "Specifies the number of days you want to retain log events"
}

# SSL
variable "frontend_domain" {
  default = "stashng.com"
}

variable "acme_registration_email" {
  default = "stashngr@gmail.com"
}

variable "acme_server_url" {
  default = "https://acme-v02.api.letsencrypt.org/directory"
}

variable "domain_r53_host_id" {
  default = "Z0651542ED64NKTICGZU"
}
