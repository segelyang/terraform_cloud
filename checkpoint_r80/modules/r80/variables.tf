variable "name" {
  description = "Name to be used on all resources as prefix"
  default     = "instance_name"
}

variable "image" {
  description = "Image that will be used to create instance"
}

variable "flavor" {
  description = "The Instance Flavor"
}

variable "port" {
  description = "The config to define create_port"
  default     = {}
}

variable "tags" {
  description = "tags map to use on instance metadata"
  default     = {}
}


