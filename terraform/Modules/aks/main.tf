resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
    scale_down_mode = var.scale_down_mode
    ultra_ssd_enabled = var.ultra_ssd_enabled
    os_sku = var.os_sku
    os_disk_size_gb = var.os_disk_size_gb
    kubelet_disk_type = var.kubelet_disk_type
    workload_runtime = var.workload_runtime
    node_labels = var.node_labels
    max_pods = var.maxpods
    type = var.node_pool_type
      }

  identity {
    type = var.identity_type
  }
  network_profile {
    load_balancer_sku = var.load_balancer_sku
    network_mode = var.network_mode
    network_plugin = var.network_plugin
    network_plugin_mode = var.network_plugin_mode
    network_policy = var.network_policy
    service_cidr = var.service_cidr
    dns_service_ip = var.dns_service_ip
  }

  tags = {
    Environment = var.aks_Environment
  }
}