variable "region" {
    description = "The region where the resources will be deployed"
    type        = string
    default     = "us-central1"
}

variable "project_id" {
    description = "The project ID where the resources will be deployed"
    type        = string
}

variable "zone" {
    description = "The zone where the resources will be deployed"
    type        = string
    default     = "us-central1-a"
  
}