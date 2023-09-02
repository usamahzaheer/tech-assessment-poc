module "rg" {
  source      = "../Modules/rg"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "aks" {
  source              = "../Modules/aks"
  rg_name             = var.rg_name
  rg_location         = var.rg_location
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  node_pool_name      = var.node_pool_name
  node_count          = var.node_count
  vm_size             = var.vm_size
  maxpods             = var.maxpods
  scale_down_mode     = var.scale_down_mode
  ultra_ssd_enabled   = var.ultra_ssd_enabled
  node_pool_type      = var.node_pool_type
  os_sku              = var.os_sku
  os_disk_size_gb     = var.os_disk_size_gb
  kubelet_disk_type   = var.kubelet_disk_type
  workload_runtime    = var.workload_runtime
  node_labels         = var.node_labels
  identity_type       = var.identity_type
  aks_Environment     = var.aks_Environment
  load_balancer_sku   = var.load_balancer_sku
  network_mode        = var.network_mode
  network_plugin      = var.network_plugin
  network_plugin_mode = var.network_plugin_mode
  network_policy      = var.network_policy
  service_cidr        = var.service_cidr
  dns_service_ip      = var.dns_service_ip

  depends_on = [
    module.rg
  ]
}



