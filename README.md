# SE Demo - Vault Dynamic Database Secrets

## Overview

This repository aims to provide a demonstration of how to leverage HashiCorp Vault for dynamic database secret management. This project includes Terraform files for configuring a demo Vault Cluster, example web application, and utility scripts for configuring database roles and generating secrets.

Vault is a powerful tool for managing and distributing secrets in a secure manner. It can be used to generate dynamic database credentials, providing an extra layer of security and control over your database access.

## Project Structure

The repository is organized into the following folders:

1. `terraform/`: This folder contains Terraform configuration files to provision and configure a demo Vault Cluster. These files will help you set up a Vault instance where you can experiment with dynamic database secrets management.

2. `scripts/`: In this folder, you will find utility scripts that allow you to configure database roles and generate dynamic secrets for different databases. These scripts are designed to work with the Vault instance created using the Terraform configuration.

3. `app/`: This folder contains a demo web server application that displays the username of a generated credential set from Vault. It will showcase the capability for each app runtime to get a unique database credential.

## Getting Started

To get started with this project, follow these steps:

1. Clone this repository to your local machine:

   ```sh
   git clone https://github.com/your-username/se-demo-vault-dynamic-db-secrets.git
   ```

2. Navigate to the terraform/ directory:

    ```sh
    cd se-demo-vault-dynamic-db-secrets/terraform/
    ```

3. Use Terraform to provision the demo Vault Cluster by following the instructions provided in the README within the terraform/ folder.

4. Once your Vault Cluster is up and running, you can navigate to the scripts/ folder and explore the utility scripts for configuring database roles and generating dynamic secrets.

# Contributing

If you would like to contribute to this project, please open an issue or submit a pull request. We welcome contributions from the community to improve and expand the functionality of this demo.

# License

This project is licensed under the GNU GPL v2.0 License. Feel free to use, modify, and distribute it as per the terms of the license.

# Contact

If you have any questions or need assistance with this project, you can reach out to the project maintainers:

Email: benjamin.lara@laratechs.com
Project URL: https://github.com/Laratechs/se-demo-vault-dynamic-database-secrets
