variable "region" {
  description = "The target region"
  default = "us-east-1"
}
variable "vpc_cidr" {
  description = "CIDR for vpc"
  default     = "10.0.0.0/16"
}
variable "vpc_name" {
  description = "VPC name"
  default     = "10.0.0.0/16"
}
variable "igw_name" {
  description = "Internet gateway name"
  default     = "vpc_igw"
}
variable "public_subnet_region" {
  description = "Region for public subnet"
  default     = "us-east-1a"
}
variable "public_subnet_name" {
  description = "Name for public subnet"
  default     = "Linoxide Public Subnet"
}
variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}
variable "private_subnet_region" {
  description = "Region for public subnet"
  default     = "us-east-1a"
}
variable "private_subnet_name" {
  description = "Name for public subnet"
  default     = "Linoxide Private Subnet"
}
variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "10.0.2.0/24"
}
variable "routetable_cidr" {
  description = "CIDR for route table to allow"
  default     = "0.0.0.0/0"
}
variable "routetable_name" {
  description = "Name for routetable"
  default     = "Linoxd routetable"
}
variable "sg_name" {
  description = "Name for security_group"
  default     = "vpc_Sg_web"
}
variable "sg_ingress_from_http_port" {
  description = "security_group from port"
  default     = 80
}
variable "sg_ingress_to_http_port" {
  description = "security_group to port"
  default     = 80
}
variable "sg_ingress_http_cidr" {
  description = "security_group ingress cidr"
  default     = ["0.0.0.0/0"] 
}
variable "sg_ingress_from_https_port" {
  description = "security_group from port"
  default     = 443
}
variable "sg_ingress_to_https_port" {
  description = "security_group to port"
  default     = 443
}
variable "sg_ingress_https_cidr" {
  description = "security_group ingress cidr"
  default     = ["0.0.0.0/0"] 
}
variable "ec2_ami_id" {
  description = "ec2 instance ami id"
  default     = "ami-013f17f36f8b1fefb"
}
variable "ec2_az" {
  description = "ec2 instance availability zone"
  default     = "us-east-1a"
}
variable "ec2_type" {
  description = "ec2 instance type"
  default     = "t2.small"
}

