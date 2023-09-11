terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 1.0.0"

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "dev-tf-state"
    region     = "ru-central1"
    key        = "dev.tfstate"
    access_key = "YCAJ************ijEYqNy"
    secret_key = "YCNr***********layXsq3lsMh"

    skip_region_validation      = true
    skip_credentials_validation = true

    dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gc3d9ece99mp0e38an/etnf0flj606uomh989d0"
    dynamodb_table = "dev-tf-state"
  }
}

provider "yandex" {
  zone      = "ru-central1-a"
  cloud_id  = "b1gc3d9ece99mp0e38an"
  folder_id = "b1gkg053qkbjltpamk4f"
}
