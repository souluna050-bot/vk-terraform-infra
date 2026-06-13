terraform {
  required_providers {
    vkcs = {
      source = "vk-cs/vkcs"
      version = "~> 0.15"
    }
  }
}

provider "vkcs" {}

resource "vkcs_networking_network" "test" {
  name           = "ci-test-network"
  admin_state_up = true
}

output "network_id" {
  value = vkcs_networking_network.test.id
}
