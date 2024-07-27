xs_storage_pool = {
  name   = "xs_storage_pool"
  source = "/home/studyer/work/lxd-xs-pool"
}

xs_network = {
  ipv4 = { address = "192.168.42.1/24" }
}

xs_profiles = [
  {
    name = "xs_master"
    limits = {
      cpu    = 1
      memory = "1GiB"
    }
  },
  {
    name = "xs_worker"
    limits = {
      cpu    = 4
      memory = "8GiB"
    }
  }
]

xs_image = "ubuntu:7b285c64ffc2"

xs_containers = [
  # {
  #   name    = "xs-master-01"
  #   profile = "xs_master"
  #   ip      = "192.168.42.11"
  # },
  # {
  #   name    = "xs-master-02"
  #   profile = "xs_master"
  #   ip      = "192.168.42.12"
  # },
  {
    name    = "xs-worker-01"
    profile = "xs_worker"
    ip      = "192.168.42.21"
  },
  {
    name    = "xs-worker-02"
    profile = "xs_worker"
    ip      = "192.168.42.22"
  },
  # {
  #   name    = "xs-worker-03"
  #   profile = "xs_worker"
  #   ip      = "192.168.42.23"
  # }
]

