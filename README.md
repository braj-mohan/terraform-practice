1️⃣ Primitive Data Types
1. string

Used for text values.

variable "instance_name" {
  type    = string
  default = "web-server"
}


✔ Most commonly used type

2. number

Used for integers or floats.

variable "instance_count" {
  type    = number
  default = 3
}

3. bool

Boolean values.

variable "enable_monitoring" {
  type    = bool
  default = true
}

2️⃣ Collection Data Types
4. list

Ordered collection of same type values.

variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}


Access:

var.availability_zones[0]

5. set

Unordered collection of unique values.

variable "allowed_ports" {
  type    = set(number)
  default = [22, 80, 443]
}


✔ No duplicates
✔ Order not guaranteed

6. map

Key–value pairs with same value type.

variable "tags" {
  type = map(string)
  default = {
    Env  = "prod"
    Team = "devops"
  }
}


Access:

var.tags["Env"]

3️⃣ Structural Data Types (Advanced)
7. object

Complex structure with different data types.

variable "ec2_config" {
  type = object({
    ami           = string
    instance_type = string
    count         = number
  })
}


Value:

ec2_config = {
  ami           = "ami-0abcd1234"
  instance_type = "t2.micro"
  count         = 2
}

8. tuple

Ordered values with fixed types.

variable "server_info" {
  type = tuple([string, number, bool])
  default = ["web", 2, true]
}


Access:

var.server_info[0]

4️⃣ Special Type
9. any

Accepts any data type.

variable "misc" {
  type = any
}


⚠️ Use only when type is unknown
❌ Avoid in production modules

Common Type Combinations (Real Projects)
Map of Objects (Very Common)
variable "instances" {
  type = map(object({
    instance_type = string
    ami           = string
  }))
}


Usage:

for_each = var.instances

Type Validation Example
variable "port" {
  type = number

  validation {
    condition     = var.port > 0 && var.port < 65536
    error_message = "Port must be between 1 and 65535."
  }
}
