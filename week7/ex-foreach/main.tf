variable "user_map" {
  default = {
    alice = { age = 24, city = "New York" }
    bob   = { age = 27, city = "San Francisco" }
  }
}

resource "aws_instance" "example" {
  for_each = var.user_map

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = each.key
    Age  = each.value.age
    City = each.value.city
  }
}
