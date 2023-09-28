#Mandatory Variables
variable "vpc_cidr" {
  type        = string
  description = "Network CIDR"
}

variable "private_subnets" {
  type        = list(string)
  description = "value of private subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "value of public subnets"
}

variable "server_type" {
  type        = string
  description = "Instance type"
  default     = "t3.micro"
}

variable "public_server_count" {
  type        = number
  description = "Public Instance count"
  default     = 0
}

variable "private_server_count" {
  type        = number
  description = "Public Instance count"
  default     = 0
}

#Optional Variables
variable "name" {
  type        = string
  description = "Environment name"
  default     = "youtube" #optional
}

variable "enable_nat_gateway" {
  type        = bool
  description = "enable nat gateway"
  default     = true
}

variable "include_ipv4" {
  type        = bool
  description = "Assign public IP to instances in public subnets"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "tags for resources"
  default = {
    "Environment" = "dev"
  }
}

variable "create_key_pair" {
  type        = bool
  description = "create key pair"
  default     = true
}




