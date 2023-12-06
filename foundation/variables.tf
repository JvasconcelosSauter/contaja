variable "folder_name" {
  default     = "prod-contaja"
  type        = string
  description = "o nome que sera dado a pasta do projeto contaja"
}
variable "org_id" {
  default     = "793318788601"
  type        = string
  description = "id da org contaja"
}

variable "project_name" {
  default     = "prj-contaja-prod"
  type        = string
  description = "o nome que sera dado ao projeto contaja"
}

variable "project_id" {
  default     = "prj-contaja-prod"
  type        = string
  description = "id do projeto"
}

variable "vpc_name" {
  default     = "vpc-contaja-prod"
  type        = string
  description = "o nome que sera dado ao vpc contaja"
}

variable "subnetwork_name" {
  default     = "sn-contaja-prod"
  type        = string
  description = "o nome que sera dado a subnet contaja"
}

variable "ip_range" {
  default     = "10.10.0.0/16"
  type        = string
  description = "ip do range da subnet"
}

variable "region" {
  default = "southamerica-east1"
  type = string
}

variable "enabled_apis" {
  description = "Lista de APIs a serem habilitadas no projeto GCP"
  type        = list(string)
  default     = ["compute.googleapis.com", "storage.googleapis.com", "sqladmin.googleapis.com", "container.googleapis.com"]
}
