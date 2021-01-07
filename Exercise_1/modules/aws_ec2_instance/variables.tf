variable "instance_count"{
    description = "The number of instances required to be provisioned."
}

variable "tags"{
    description = "Tags for your instances"
}

variable "instance_type" {
    descript = "A valid AWS instance type, e.g. t2-micro, t4-large, etc."
}