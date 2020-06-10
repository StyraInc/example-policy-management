package global.policies.app

import data.global.policies.common.utils

# Extract claims from JWT. Note that for this example, the returned claims map is mocked, and so the input token in meaningless.
claims := utils.claims_from_jwt("mock")

# Check whether write is allowed, based on the JWT claims and the data.context
# for this environment.
allow_write {
  some i, j
  claims.roles[i] == data.context.AllowedWriterRoles[j]
}

# Main entry point to produce map of entitlements.
main = x {
  x := {
    "AllowWrite": allow_write
  }
}
