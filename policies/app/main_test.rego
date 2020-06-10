package global.policies.app

mock_context_rw := {
  "AllowedWriterRoles": [
    "reader",
    "writer"
  ]
}

mock_context_w := {
  "AllowedWriterRoles": [
    "writer"
  ]
}

# Test for allow_write as true when Allowed Writer Roles includes "reader".
test_allow_write_rw {
    allow_write with data.context as mock_context_rw
}

# Test for allow_write as false when Allowed Writer Roles is only "writer".
test_allow_write_w {
    not allow_write with data.context as mock_context_w
}
