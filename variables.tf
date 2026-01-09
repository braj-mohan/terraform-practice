variable "filename" {
  default = "/home/practicevm1/Day1/terraform-variables/devope_automated.txt"
}

variable "content" {
  default = "This is auto generated from a variable"
}

variable "devops_op_trainer" {}

variable "content_map" {
  type = map(any)
  default = {
    "content1" = "This is Content1"
    "content2" = "This is Content2"
  }
}

variable "file_list" {
  type = list
  default = ["/home/practicevm1/Day1/terraform-variables/file1.txt","/home/pract                                                                             icevm1/Day1/terraform-variables/file2.txt"]
}

variable "aws_ec2_object" {
  type = object({
    name = string
    instances = number
    keys = list(string)
    ami = string
})

default = {
  name = "test_ec2_instance"
  instances = 2
  keys = ["key1.pem","key2.pem"]
  ami = "ubuntu-aaw3reoiasddv"
}
}

