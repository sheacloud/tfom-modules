variable "reader_principal_ids" {
  description = "The IDs of the principals to assign the Reader role to."
  type        = list(string)
  default     = []
}

variable "contributor_principal_ids" {
  description = "The IDs of the principals to assign the Contributor role to."
  type        = list(string)
  default     = []
}

variable "owner_principal_ids" {
  description = "The IDs of the principals to assign the Owner role to."
  type        = list(string)
  default     = []
}
