module "vault_audit" {
  source = "../../"
  audit_devices = [{
    description = "A socket audit device."
    type        = "socket"
    path        = "app_socket"
    local       = false
    options = {
      address     = "127.0.0.1:8000"
      socket_type = "tcp"
    }
  }]
}
