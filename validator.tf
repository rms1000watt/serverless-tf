// GENERATED FILE: DO NOT EDIT

resource "null_resource" "validator" {
  provisioner "local-exec" {
    command = "${local.functions_length > 5 || local.lambda_0_env_keys_list_length != local.lambda_0_env_vals_list_length || local.lambda_1_env_keys_list_length != local.lambda_1_env_vals_list_length || local.lambda_2_env_keys_list_length != local.lambda_2_env_vals_list_length || local.lambda_3_env_keys_list_length != local.lambda_3_env_vals_list_length || local.lambda_4_env_keys_list_length != local.lambda_4_env_vals_list_length || false ? "echo 'More than 5 functions provided in module OR length(env_keys) != length(env_vals)' && exit 1" : "exit 0"}"
  }

  triggers {
    timestamp = "${timestamp()}"
  }
}
