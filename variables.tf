variable "xs_storage_pool" {
  type = object({
    name   = string
    source = string
  })
}

variable "xs_network" {
  type = object({
    ipv4 = object({
      address = string
    })
  })
}

variable "xs_profiles" {
  type = list(object({
    name = string
    limits = object({
      cpu    = number
      memory = string
    })
  }))
}

variable "xs_image" {
  type    = string
  default = "images:ubuntu/24.04"
}

variable "xs_containers" {
  type = list(object({
    name    = string
    profile = string
    ip      = string
  }))
}

