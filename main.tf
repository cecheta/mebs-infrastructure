resource "heroku_app" "mebs" {
  name   = "cecheta-mebs"
  region = "eu"

  config_vars           = merge(local.config_vars.frontend, local.config_vars.backend)
  sensitive_config_vars = merge(local.sensitive_config_vars.frontend, local.sensitive_config_vars.backend)
}
