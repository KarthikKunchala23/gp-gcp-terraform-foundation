variable "role_id" {
  description = "Role ID for the Custome IAM Role"
  type = string
}

variable "title" {
  description = "Title of the Role"
  type = string
}

variable "description" {
  description = "Provide Description for the role"
  type = string
  default = ""
}

variable "permissions" {
  description = "List of Permissions to the Role"
  type = set(string)
}