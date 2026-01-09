variable "filename" {
  default = "/home/ubuntu/terraform-course/devope_automated.txt"
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
  default = ["/home/ubuntu/terraform-course/file1.txt","/home/ubuntu/terraform-course/file2.txt"]
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


variable "no_of_students" {}
