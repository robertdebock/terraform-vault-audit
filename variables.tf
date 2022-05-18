variable "audit_devices" {
  description = "A list of audit devices."
  type = list(object({
    type = string
    # local = bool
    options = map(any)
  }))
  default = [{
    type  = "file"
    local = true
    options = {
      file_path = "/var/log/vault_audit.log"
    }
  }]
}
