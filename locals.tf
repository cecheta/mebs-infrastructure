locals {
  domain = "https://cecheta-mebs.herokuapp.com"

  config_vars = {
    frontend = {
      REACT_APP_DOMAIN = local.domain
    }
    backend = {
      DOMAIN        = local.domain
      BCRYPT_ROUNDS = 12
    }
  }
  sensitive_config_vars = {
    frontend = {
      REACT_APP_CLIENT_ID = var.spotify_client_id
    }
    backend = {
      CLIENT_ID      = var.spotify_client_id
      CLIENT_SECRET  = var.spotify_client_secret
      MONGODB_URL    = var.mongodb_url
      JWT_SECRET     = random_password.jwt_secret.result
      REFRESH_SECRET = random_password.refresh_secret.result
      COOKIE_SECRET  = random_password.cookie_secret.result
    }
  }
}

