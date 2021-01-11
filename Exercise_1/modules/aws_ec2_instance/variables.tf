variable "instance_count"{
    description = "The number of instances required to be provisioned."
    type = number
    default = 1
}

variable "tags"{
    description = "Tags for your instances"
    type = map(string)
    default = {}
}

variable "instance_type" {
    description = "A valid AWS instance type, e.g. t2-micro, t4-large, etc."
}

variable "vpc_security_group_ids" {
    description = "A list of security group IDs to associate with"
    type = list
    default = []
}

variable "subnet_id" {
    description = "The VPC Subnet ID to launch in"
    type = string
    default = ""
}