#! /bin/bash

# Deletes all generated credential entries from Vault and Database

vault write -f /sys/leases/revoke-prefix/db/creds/app
