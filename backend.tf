terraform {
  cloud {
    organization = "yannml"

    workspaces {
      name = "terraform-tfe-workspace"
    }
  }
}