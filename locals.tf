locals {
    project = {
        terraform-tfe-project = {
            description = "terraform tfe project description"
        }
    }

    workspace = {
        terraform-tfe-workspace = {
            description = "terraform tfe workspace description"
            execution_mode = "remote"
            project_id = module.project["terraform-tfe-project"].id
            vcs_repo_identifier = "yannml220/terraform-tfe"
        }
    }
}