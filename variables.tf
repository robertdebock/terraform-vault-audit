variable "audit_devices" {
  description = "A list of audit devices."
  # type = set(objects({
  #   type    = string
  #   local   = boolean
  #   options = map
  # }))
  default = {
    type  = "file"
    local = true
    options = {
      file_path = "/var/log/vault_audit.log"
    }
  }
}
