variable "example_list" {
  description = "This is a list variable"
  type        = list(string)
  default     = ["one", "two", "three"]
}

resource "null_resource" "example" {
  count = length(var.example_list)

  provisioner "local-exec" {
    command = "echo Creating resource named ${var.example_list[count.index]}"
  }
}