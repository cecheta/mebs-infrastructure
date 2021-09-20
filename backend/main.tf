resource "heroku_app" "backend" {
  name   = "cecheta-mebs-backend"
  region = "eu"
}

resource "heroku_addon" "database" {
  app  = heroku_app.backend.name
  plan = "heroku-postgresql:hobby-dev"
}
