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

variable "source_code_path" {
  description = "The path that contains the mebs source code"
  type        = string
}

variable "source_code_hash" {
  description = "The commit hash of the version to be deployed"
  type        = string
  default     = null
}
