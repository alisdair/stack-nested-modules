required_providers {
  terraform = {
    source = "terraform.io/builtin/terraform"
  }
}

provider "terraform" "main" {}

component "root" {
  source = "./root"

  providers = {
    terraform = provider.terraform.main
  }
}
