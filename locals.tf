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
            vcs_repo_identifier = "${var.github_organization_name}/terraform-tfe"
        }

        terraform-github-workspace = {
            description = "terraform github workspace description"
            execution_mode = "local"
            project_id = module.project["terraform-tfe-project"].id
            vcs_repo_identifier = "${var.github_organization_name}/terraform-github"
        }
    }
}