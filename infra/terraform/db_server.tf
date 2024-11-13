resource "azurerm_linux_virtual_machine" "db_server" {
  name                = "db-server"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  size                = var.vm_size
  admin_username      = var.admin_username
  disable_password_authentication = true

  network_interface_ids = [azurerm_network_interface.db_server_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  admin_ssh_key {
    username   = var.admin_username
    public_key = file("${path.module}/id_rsa.pub")
  }

  # פורט המותאם אישית
  custom_data = <<-EOT
    #!/bin/bash
    sudo sed -i 's/^#Port 22/Port 2222/' /etc/ssh/sshd_config
    sudo systemctl restart sshd
  EOT
}
