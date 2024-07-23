# The application's name
variable "app" {
  default = "stashng-web"
}

# The environment that is being built
variable "environment" {
  default = "prod"
}

variable "region" {
  default = "us-east-2"
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
  default = "Z05086912FFC07M3SJWTF"
}
