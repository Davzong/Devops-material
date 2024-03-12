variable "regions" {
  default = ["us-west-1", "us-west-2", "us-east-1"]
}

variable "instances" {
  default = ["t2.micro", "t2.small", "t2.medium"]
}

locals {
  region_instance_pairs = { for pair in setproduct(var.regions, var.instances) :
    "${pair[0]}-${pair[1]}" => {
      region  = pair[0]
      instance_type = pair[1]
    }
  }
}

resource "aws_instance" "example" {
  for_each = local.region_instance_pairs

  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  availability_zone = each.value.region

  tags = {
    Name = each.key}
}
