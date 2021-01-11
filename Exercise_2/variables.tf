# TODO: Define the variable for aws_region
variable "input_reagion" {
    description = "The AZ in which the public subnet will be created"
    type = string
    default = "us-east-1"
}