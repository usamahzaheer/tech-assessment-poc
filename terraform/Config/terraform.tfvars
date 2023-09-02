########## RG ########## 
rg_name     = "rg-tech-assesment-poc"
rg_location = "East US"
########## AKS ########## 
aks_name            = "z-use1-aks-tech-assesment-poc"
dns_prefix          = "z-use1-aks-tech-assesment-poc"
node_pool_name      = "default"
node_count          = 2
vm_size             = "Standard_D2_v2"
identity_type       = "SystemAssigned"
aks_Environment     = "Production"
maxpods             = 110
scale_down_mode     = "Delete"
ultra_ssd_enabled   = false
node_pool_type      = "VirtualMachineScaleSets"
os_sku              = null
os_disk_size_gb     = null
kubelet_disk_type   = null
workload_runtime    = null
node_labels         = null
load_balancer_sku   = "standard"
network_mode        = null
network_plugin      = "azure"
network_plugin_mode = null
network_policy      = "calico"
service_cidr        = null
dns_service_ip      = null


