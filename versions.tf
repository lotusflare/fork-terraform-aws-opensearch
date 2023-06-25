terraform {
  required_version = ">= 1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.12.0"

      configuration_aliases = [aws.dns]
    }
    elasticsearch = {
      source  = "phillbaker/elasticsearch"
      version = ">= 2.0.0"
    }
  }
}
