# SE Demo - Vault Dynamic Database Secrets - Terraform Configuration

This folder contains Terraform configuration files to provision and configure a demo HashiCorp Vault Cluster. To run this demo, follow these steps:

## Prerequisites

Before running the Terraform commands, ensure that you have the following prerequisites:

1. HashiCorp Vault: You should have HashiCorp Vault installed on your local machine or have access to a Vault server. You can download Vault from [the official website](https://www.vaultproject.io/downloads).

## Steps to Run the Demo

1. Start the Vault server in dev mode with a listener address that allows external connections:

   ```shell
   vault server -dev -dev-listen-address="0.0.0.0"
   ```
This command starts a Vault server in development mode with an IP address of 0.0.0.0, allowing connections from external sources. Note that this is for demonstration purposes only; in a production environment, you should follow secure Vault deployment practices.

2. Initialize Terraform:

```shell
terraform init
```

This command initializes Terraform, downloading the required providers and modules specified in the main.tf file.

3. Plan the Terraform changes to ensure that everything is configured correctly:

```shell
terraform plan
```

The terraform plan command will show you a preview of the resources that Terraform will create or modify.

4. Apply the Terraform configuration to create the Vault resources:

```shell
terraform apply
```

When prompted, confirm by typing "yes."

Terraform will provision the demo Vault Cluster based on the configuration in the .tf files.

Once Terraform completes the deployment, you can access the Vault Cluster and use it for experimenting with dynamic database secrets management.

# Cleaning Up
After you have completed your demo and no longer need the Vault resources, you can clean up the environment by running:

```shell
terraform destroy
```

Confirm by typing "yes" when prompted to destroy the resources provisioned by Terraform.

# Notes

- The provided vault server command is for development purposes and not suitable for production use. In a production environment, you should follow best practices for securing your Vault deployment.

- Make sure to adjust your Vault configuration to meet your specific requirements, including authentication, policies, and secrets engines, as needed.

- For additional Vault documentation and usage instructions, please refer to the official Vault documentation.

Enjoy exploring dynamic database secrets management with HashiCorp Vault!
