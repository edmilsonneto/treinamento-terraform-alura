variable "amis" {
  type = map

  default = {
    "sa-east-1": "ami-0b7af114fb404cd23"
    "us-east-2" : "ami-0a695f0d95cefc163"
  }
}

variable "cidr_blocks" {
    type = list

    default = ["177.223.175.65/32", "177.223.175.65/32"]
}