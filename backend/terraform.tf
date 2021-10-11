terraform {
  backend "remote" {
    organization = "mebs"
    workspaces {
      name = "mebs-infrastructure-pg"
    }
  }

  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 4.6"
    }
  }
}
