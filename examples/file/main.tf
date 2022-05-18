module "vault_audit" {
  source = "../../"
  audit_devices = [{
    description = "A local audit device."
    type        = "file"
    options = {
      file_path = "/dev/null"
    }
  }]
}
