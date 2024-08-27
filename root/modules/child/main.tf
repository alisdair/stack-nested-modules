terraform {
  required_providers {
    terraform = {
      source = "terraform.io/builtin/terraform"
    }
  }
}

variable "name" {
  type = string
}

variable "rank" {
  type = number
}

resource "terraform_data" "child" {
  input = {
    name = var.name
    rank = var.rank
  }
  triggers_replace = [ var.name, var.rank ]
}
