terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}
# connection {
#     type = "ssh"
#     host = yandex_compute_instance.app.network_interface.0.nat_ip_address
#     user = "ubuntu"
#     agent = false 
# путь до приватного ключа
#     private_key = file(var.private_key_path)
#   } 

#  provisioner "file" {
#   source = "files/puma.service"
#  destination = "/tmp/puma.service"
#  }

#  provisioner "remote-exec" {
#  script = "files/deploy.sh"
#  }  




