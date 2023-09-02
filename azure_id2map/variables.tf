variable "id" {
  description = "ID Azure d'une ressource au format /subscriptions/..."
  type        = string

  validation {
    condition     = strcontains(var.id, "subscriptions")
    error_message = "L'ID d'une ressource Azure ressemble à /subscriptions/..."
  }
}
