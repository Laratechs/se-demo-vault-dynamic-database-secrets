#! /bin/bash

# Configure Vault Audit Logging

## Disable Audit Logging if already enabled
vault audit disable file

vault audit enable file file_path=/tmp/vault_audit.log

lnav /tmp/vault_audit.log
