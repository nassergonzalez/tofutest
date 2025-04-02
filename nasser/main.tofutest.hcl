run "verify_outputs" {
  command = apply

  assert {
    condition     = output.app1 != ""
    error_message = "Output app1 should not be empty"
  }
}
