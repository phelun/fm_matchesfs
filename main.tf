provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.7"
}


terraform {
  required_version = ">= 0.12.12"

}

locals {
  users = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne", "breena"]
  envs  = ["dev", "qa", "uat", "test", "prod"]

  nestedloop = [
    for user in local.users : [
      for env in local.envs : [
        join("-", [user, env])
      ]
    ]
  ]
}


resource "aws_iam_user" "matches_map_users_env" {
  for_each = toset(flatten(local.nestedloop))
  name     = each.value
}

resource "aws_iam_access_key" "matches_user_keys" {
  for_each = toset(flatten(local.nestedloop))
  user     = aws_iam_user.matches_map_users_env[each.value].name
}

######################### OutPuts ###############################
output "created_users" {
  description = "User List"
  value       = "${values(aws_iam_user.matches_map_users_env)[*].name}"
}

output "created_users_all_values" {
  description = "Detailed user info"
  value       = aws_iam_access_key.matches_user_keys
}
