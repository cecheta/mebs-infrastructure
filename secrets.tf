resource "random_password" "jwt_secret" {
  length = 32
}

resource "random_password" "refresh_secret" {
  length = 32
}

resource "random_password" "cookie_secret" {
  length = 32
}
