variable "region" {
  description = "Deployment region"
  default = "ap-south-1"
}

variable "aws_profile" {
  description = "Given name in the credential file"
  type = string
  default = "swapnil"
}

variable "shared_credentials_files" {
  description = "Profile file with credential to the AWS account"
  type = string
  default = "C:/Users/Swapnil/.aws/credentials"
}

