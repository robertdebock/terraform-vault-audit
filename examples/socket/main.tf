module "vault_audit" {
  source = "../../"
  audit_devices = [{
    description = "A socket audit device."
    type        = "socket"
    path        = "app_socket"
    local       = false
    options = {
      address     = "socket:8000"
      socket_type = "tcp"
    }
  }]
}
