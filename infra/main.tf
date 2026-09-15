provider "incus" {}

resource "incus_instance" "agent" {
  count = var.vm_count

  name  = format("agent-%02d", count.index + 1) # agent-XX
  image = var.vm_image
  type  = "virtual-machine"

  config = {
    "limits.cpu"    = tostring(var.vm_cpu)
    "limits.memory" = var.vm_memory
  }
}