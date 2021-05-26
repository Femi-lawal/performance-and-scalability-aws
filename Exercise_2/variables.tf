terraform {
  required_version = ">= 0.12"
}

variable "region" {
    type = string
    default = "us-east-1"
}

variable "output_file" {
  type    = string
  default = "greet_lambda.zip"
}

variable "lambda_function_name" {
  type    = string
  default = "greet_lambda"
}

variable "runtime" {
  type    = string
  default = "python3.7"
}


variable "lambda_handler" {
  type    = string
  default = "greet_lambda.lambda_handler"
}