locals {
  clean_input = trimprefix(var.id, "/")
  parts       = split("/", local.clean_input)
  result = {
    for i in range(0, length(local.parts) / 2) :
    local.parts[i * 2] => local.parts[i * 2 + 1]
  }
}

