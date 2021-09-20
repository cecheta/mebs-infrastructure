resource "heroku_app" "mebs" {
  name   = "cecheta-mebs"
  region = "eu"

  config_vars           = merge(local.config_vars.frontend, local.config_vars.backend)
  sensitive_config_vars = merge(local.sensitive_config_vars.frontend, local.sensitive_config_vars.backend)
}

resource "heroku_build" "app_build" {
  app        = heroku_app.mebs.name
  buildpacks = ["https://github.com/heroku/heroku-buildpack-nodejs#latest"]

  source {
    path    = var.source_code_path
    version = var.source_code_hash
  }
}
