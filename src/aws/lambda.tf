data "archive_file" "python_lambda_package" {  
  type = "zip"  
  source_file = "../resources/lambda.py" 
  output_path = "lambda.zip"
}


resource "aws_lambda_function" "test_lambda_function" {
        function_name = var.serverless_app_name
        filename      = "lambda.zip"
        source_code_hash = data.archive_file.python_lambda_package.output_base64sha256
        role          = aws_iam_role.iam_for_lambda.arn
        runtime       = "python3.10"
        handler       = "lambda.lambda_handler"
        timeout       = 10
}