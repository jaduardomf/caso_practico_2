output "resource_group_id" {
    value = azurerm_resource_group.rg.id
}

output "acr_login_server" {
    value = azurerm_container_registry.acr.login_server
}

output "acr_admin_user" {
    value = azurerm_container_registry.acr.admin_username
    sensitive = true
}

output "acr_admin_pass" {
    value = azurerm_container_registry.acr.admin_password
    sensitive = true
}

output "vm_public_ip" {
    value = azurerm_public_ip.pip_vm.ip_address
}

output "tls_private_key" {
  value     = tls_private_key.webserver_ssh.private_key_pem
  sensitive = true
}

output "aks_client_certificate" {
  value     = azurerm_kubernetes_cluster.aks1.kube_config.0.client_certificate
  sensitive = true
}

output "aks_kube_config" {
  value = azurerm_kubernetes_cluster.aks1.kube_config_raw

  sensitive = true
}