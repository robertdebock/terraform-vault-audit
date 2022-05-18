module "vault_audit" {
  source = "../../"
  audit_devices = [{
    description = "A syslog audit device."
    type        = "syslog"
    local       = false
    options = {
      facility = "AUTH"
      tag      = "vault"
    }
  }]
}
