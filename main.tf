resource "heroku_app" "mebs" {
  name   = "cecheta-mebs"
  region = "eu"

  config_vars           = merge(local.config_vars.frontend, local.config_vars.backend)
  sensitive_config_vars = merge(local.sensitive_config_vars.frontend, local.sensitive_config_vars.backend)
}

resource "heroku_build" "example" {
  app        = heroku_app.mebs.name
  buildpacks = ["https://github.com/heroku/heroku-buildpack-nodejs#latest"]

  source {
    url     = "https://github.com/mars/cra-example-app/archive/v2.1.1.tar.gz"
    version = "2.1.1"
  }
}
