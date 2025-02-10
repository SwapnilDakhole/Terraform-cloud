module "profile_generator_lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 6.0"

  function_name = "profile-generator-lambda"
  description   = "Generates a new profile"
  handler      = "com.deals_migration.DealsMigrationHandler::handleRequest"
  runtime      = "java17"

  local_existing_package = "${path.module}/java/assignment-0.0.1-SNAPSHOT-lambda-package.zip"

  memory_size  = 1024
  timeout      = 60

  tags = {
    Name = "profile-generator-lambda"
  }
}
