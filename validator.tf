// GENERATED FILE: DO NOT EDIT

resource "null_resource" "validator" {
  provisioner "local-exec" {
    command = "${length(var.functions) > 10 ? "echo 'More than 10 functions provided in module' && exit 1" : "exit 0"}"
  }

  triggers {
    timestamp = "${timestamp()}"
  }
}
