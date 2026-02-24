variable "root_management_group_id" {
  description = "The ID (name) of the root management group"
  type        = string
}

variable "root_management_group_name" {
  description = "Display name for the root management group"
  type        = string
}

variable "management_group_hierarchy" {
  description = "Map of management groups to create, with display name and parent"
  type = map(object({
    display_name = string
    parent_id    = string
  }))
}
