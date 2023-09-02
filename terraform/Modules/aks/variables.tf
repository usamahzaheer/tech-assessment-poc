variable "aks_name" {}
variable "rg_name" {}
variable "rg_location" {}
variable "dns_prefix" {}
variable "node_pool_name" {}
variable "node_count" {type = number}
variable "vm_size" {}
variable "identity_type" {}
variable "aks_Environment" {}
variable "maxpods" {type = number}
variable "scale_down_mode" {}
variable "ultra_ssd_enabled" {type = bool}
variable "node_pool_type" {}
variable "os_sku" {}
variable "os_disk_size_gb"{}
variable "kubelet_disk_type" {}
variable "workload_runtime" {}
variable "node_labels" {}
variable "load_balancer_sku" {}
variable "network_mode" {}
variable "network_plugin" {}
variable "network_plugin_mode" {}
variable "network_policy" {}
variable "service_cidr" {}
variable "dns_service_ip" {}
