resource "openstack_networking_port_v2" "port" {
  network_id         = var.port.network_id
  admin_state_up     = "true"

  allowed_address_pairs = {
    ip_address = "0.0.0.0/0"
    mac_address = "00:00:00:00:00:00"
  }
}

resource "openstack_compute_instance_v2" "instance" {
  name                = var.name
  image_name          = var.image
  flavor_name         = var.flavor

  metadata = var.tags

  network {
    port = openstack_networking_port_v2.port.id
  }

  lifecycle {
    ignore_changes = []
  }

}
