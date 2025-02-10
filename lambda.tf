module "profile_generator_lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 6.0"

  function_name = "profile-generator-lambda"
  description   = "Generates a new profile"
  handler       = "lambda_function.lambda_handler"  # Python function entry point
  runtime       = "python3.12"

  local_existing_package = "${path.module}/lambda_function/lambda_function.zip"

  memory_size  = 1024
  timeout      = 60

  tags = {
    Name = "profile-generator-lambda"
  }
}
