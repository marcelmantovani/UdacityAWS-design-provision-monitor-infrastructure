variable "lambda_function_name" {
  default = "lambda_function_name"
}

variable "lambda_filename"{
    description = "The name of the file"
    type = string
    default = "lambda_function_payload.zip"
}

variable "handler_name" {
    description = "The handler name"
    type = string
}

variable "runtime" {
    description = "one of [nodejs nodejs4.3 nodejs6.10 nodejs8.10 nodejs10.x nodejs12.x java8 java8.al2 java11 python2.7 python3.6 python3.7 python3.8 dotnetcore1.0 dotnetcore2.0 dotnetcore2.1 dotnetcore3.1 nodejs4.3-edge go1.x ruby2.5 ruby2.7 provided provided.al2]"
    type = string
    default = "python3.7"
}