variable "amis" {
  type = map(string)
  default = {
    "us-east-1" : "ami-0d5eff06f840b45e9"
    "us-east-2" : "ami-077e31c4939f6a2f3"
  }
}

variable "cdir_acesso_remoto" {
  type    = list(string)
  default = ["168.197.3.72/32"]
}

variable "key_name" {
  default = "terraform-aws"
}