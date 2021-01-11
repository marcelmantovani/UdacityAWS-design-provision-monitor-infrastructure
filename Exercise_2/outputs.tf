# TODO: Define the output variable for the lambda function.

output "used_reaging"{
    value = var.input_reagion
}
output "vpc_id" {
    value = module.lambda_vpc.vpc_id
}

output "subnet_id" {
    value = module.lambda_vpc.public_subnet_id
}

output "vpc_routes" {
    value = module.lambda_vpc.routes
}

output "cloudwatchID" {
    value = module.lambda_function.cloudwatch_ID
}


output "cloudwatchName" {
    value = module.lambda_function.cloudwatch_name
}