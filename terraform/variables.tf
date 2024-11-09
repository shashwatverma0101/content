# variables.tf

variable "location" {
  description = "The Azure region to deploy resources in"
  type        = string
  default     = "East US"
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-aks-demo"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "acraksdemo123" # Ensure this is globally unique
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
  type        = string
  default     = "aks-cluster-demo"
}

variable "aks_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "aks-cluster-demo-dns"
}