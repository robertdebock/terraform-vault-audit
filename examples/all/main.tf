module "vault_audit" {
  source = "../../"
  audit_devices = [{
    description = "A local audit device."
    type        = "file"
    options = {
      file_path = "/dev/null"
    }
    },
    {
      description = "A socket audit device."
      type        = "socket"
      path        = "app_socket"
      local       = false
      options = {
        address     = "socket:8000"
        socket_type = "tcp"
        # description = "application x socket"
      }
    },
    {
      description = "A syslog audit device."
      type        = "syslog"
      local       = false
      options = {
        facility = "AUTH"
        tag      = "vault"
      }
  }]
}
