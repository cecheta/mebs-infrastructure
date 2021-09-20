provider "heroku" {
  customizations {
    set_app_all_config_vars_in_state = false
  }
}