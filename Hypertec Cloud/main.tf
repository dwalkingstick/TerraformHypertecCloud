terraform {
  required_providers {
    hci = {
      source = "hypertec-cloud/hci"
      version = "1.6.0"
    }
  }
}

# Configure hypertec.cloud Provider
provider "hci" {
    api_key = "${var.api_key}"
}