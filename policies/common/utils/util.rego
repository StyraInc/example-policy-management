package global.policies.common.utils

# Extract a map of claims from a JWT.
# See: https://test.styra.com/v1/docs/tutorials/envoy/#jwt-verification-and-inspection
claims_from_jwt(token) = x {
  # mocked data
  x := {
    "name": "Alicia Smithsonian",
    "roles": [
      "reader"
    ],
    "username": "alice"
  }
}
