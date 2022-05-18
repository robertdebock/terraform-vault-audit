variable "audit_devices" {
  description = "A list of audit devices."
  default = [{
    type  = "file"
    local = true
    options = {
      file_path = "/var/log/vault_audit.log"
    }
  }]
}
