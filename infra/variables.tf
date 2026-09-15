variable "vm_count" {
  type    = number
  default = 1               # to define
}

variable "vm_cpu" {
  type    = number
  default = 1               # to define
}

variable "vm_memory" {
  type    = string
  default = "2GiB"          # to define
}

variable "vm_image" {
  type    = string
  default = "images:debian/13"
}