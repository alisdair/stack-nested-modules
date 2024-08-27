terraform {
  required_providers {
    terraform = {
      source = "terraform.io/builtin/terraform"
    }
  }
}

module "child" {
  source = "./modules/child"

  for_each = local.children
  name = each.key
  rank = each.value
}

locals {
  children = tomap({
    alice = 3
    bob   = 2
    carol = 4
    dave  = 5
    eve   = 1
  })
}
