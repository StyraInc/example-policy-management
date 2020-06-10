package rules

env := "prod"
values := data.global.values[env].v1

main = x {
  x := data.global.policies.app.main with data.context as values
}
