#! /bin/bash

# Creates a Vault Token with the policy which enables secrets generation

vault token create \
  -policy="db-app-creds"
