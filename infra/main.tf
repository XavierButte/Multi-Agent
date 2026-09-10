terraform {
  required_providers {
    incus = {
      source  = "lxc/incus"
      version = "~> 1.2"
    }
  }
}

provider "incus" {}

resource "incus_instance" "agent" {
  name  = "agent-01"
  image = "images:debian/13"
  type  = "virtual-machine"

  config = {
    "limits.cpu"    = 1    # to define
    "limits.memory" = "2GiB"   # to define
  }
}