terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "infra-david"

    workspaces {
        name = "aws-david-labs"
    }
  }
}
