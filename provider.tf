terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
  backend "local" {
    path = "/usr/share/nginx/sites/terraform-learn/state-files/terraform.tfstate"
    
  }
}
