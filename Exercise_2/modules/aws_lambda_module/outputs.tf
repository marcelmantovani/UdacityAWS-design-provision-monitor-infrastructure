output "function_id" {
    value = aws_lambda_function.greet_lambda.id
}

output "lambda_arn" {
    value = aws_lambda_function.greet_lambda.arn
}


output "cloudwatch_ID" {
    value = aws_cloudwatch_log_group.cwatch.id
}
output "cloudwatch_name" {
    value = aws_cloudwatch_log_group.cwatch.name
}

