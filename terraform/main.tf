terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "~> 3.20.0"
    }
  }

  cloud {
    organization = "laratechs"
    workspaces {
      name = "se-demo-vault-dynamic-database-secrets"
    }
  }
}

provider "vault" {}

resource "vault_database_secrets_mount" "db" {
  path = "db"
}

resource "vault_policy" "example" {
  name = "db-app-creds"

  policy = <<EOT
path "db/creds/app" {
  capabilities = ["read"]
}
EOT
}

resource "vault_database_secret_backend_connection" "postgres" {
  backend       = vault_database_secrets_mount.db.path
  name          = "postgres"
  allowed_roles = ["app"]

  postgresql {
    connection_url = "postgres://{{username}}:{{password}}@127.0.0.1"

    username = var.db_username
    password = var.db_password
  }
}

resource "vault_database_secret_backend_role" "app" {
  backend             = vault_database_secrets_mount.db.path
  name                = "app"
  db_name             = vault_database_secret_backend_connection.postgres.name
  creation_statements = ["CREATE ROLE \"{{name}}\" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}';"]
}

resource "vault_audit" "test" {
  type = "file"

  options = {
    file_path = "/tmp/vault_audit.log"
  }
}
