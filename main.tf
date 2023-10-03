terraform {
  required_version = ">= 0.13.1"

  required_providers {
    shoreline = {
      source  = "shorelinesoftware/shoreline"
      version = ">= 1.11.0"
    }
  }
}

provider "shoreline" {
  retries = 2
  debug = true
}

module "debugging_cassandra_processes_using_strace" {
  source    = "./modules/debugging_cassandra_processes_using_strace"

  providers = {
    shoreline = shoreline
  }
}