resource "hci_instance" "WorkerVirtualMachine" {
  count = var.WorkerNodes
  environment_id = var.environment_id
  name = var.VirtualMachineName
  network_id = var.NetworkId
  template = var.OsTemplate
  compute_offering = var.Size
  ssh_key_name = hci_ssh_key.SshKey.id
  root_volume_size_in_gb = var.OsDiskSize
  cpu_count = var.CpuCount
  memory_in_mb = var.Memory
}

resource "hci_ssh_key" "SshKey" {
    environment_id = var.environment_id
    name           = "ssh-key"
    public_key     = file("public_key.pub")
}

resource "hci_network_acl" "Acl" {
    environment_id = var.environment_id
    name           = var.AclSsh
    description    = "The ACL for ssh rules"
    vpc_id         = var.VpcId
}

resource "hci_network_acl_rule" "AllowSshRule" {
    environment_id = var.environment_id
    rule_number    = 55
    cidr           = var.Cidr
    action         = "Allow"
    protocol       = "TCP"
    start_port     = 22
    end_port       = 22
    traffic_type   = "Ingress"
    network_acl_id = hci_network_acl.Acl.id
}
