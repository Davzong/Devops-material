variable "my_var" {
  type    = string
  default = "Hello, World!"
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo ${var.my_var}"
  }
}

output "my_output" {
  value = var.my_var
}