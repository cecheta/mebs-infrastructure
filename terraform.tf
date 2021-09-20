terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 4.6"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}
