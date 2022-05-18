resource "vault_audit" "default" {
  count       = length(var.audit_devices)
  type        = var.audit_devices[count.index].type
  path        = try(var.audit_devices[count.index].path, null)
  local       = try(var.audit_devices[count.index].local, null)
  options     = var.audit_devices[count.index].options
  description = try(var.audit_devices[count.index].description, null)
}

# resource "vault_audit" "test" {
#   type  = "socket"
#   path  = "app_socket"
#   local = false
#   options = {
#     address     = "127.0.0.1:8000"
#     socket_type = "tcp"
#     description = "application x socket"
#   }
# }
