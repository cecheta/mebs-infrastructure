variable "spotify_client_id" {
  description = "The Spotify client id of the app"
  type        = string
  sensitive   = true
}

variable "spotify_client_secret" {
  description = "The Spotify client secret of the app"
  type        = string
  sensitive   = true
}

variable "mongodb_url" {
  description = "The connection URL of the MongoDB database"
  type        = string
  sensitive   = true
}
