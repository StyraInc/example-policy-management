package rules

env := data.dataset.env
values := data.global.values[env].v1

main = x {
  x := data.global.policies.app.main with data.context as values
}

#test change
