# SE Demo - Vault Dynamic Database Secrets - App Directory

The `app/` directory contains a Go application that interacts with the HashiCorp Vault to retrieve and display dynamic database credentials. When you run this application using `go run .`, it will start a web server on `localhost:3000`. Accessing this web server in your browser will display the username of the generated credentials from HashiCorp Vault.

## Prerequisites

Before running the Go application, ensure that you have the following prerequisites:

1. **HashiCorp Vault:** You should have a running HashiCorp Vault server with dynamic database secrets enabled. Follow the instructions provided in the Terraform folder to set up the Vault environment.

2. **Go Programming Language:** You should have Go installed on your local machine. You can download and install Go from [the official Go website](https://golang.org/dl/).

## Running the Go Application

To run the Go application and access the web server, follow these steps:

1. Open a terminal and navigate to the `app/` directory:

   ```shell
   cd app/
   go run .
   ```

This command will start the Go application, and it will listen on localhost:3000.

2. Open your web browser and navigate to http://localhost:3000/.

3. You should see a web page displaying the username of the dynamically generated credentials from HashiCorp Vault.

## Configuration

The Go application is pre-configured to connect to the HashiCorp Vault server running on localhost on port 8200. If your Vault server is running on a different address or port, you can inform the runtime by exporting the `VAULT_ADDR` environment variable:

```shell
export VAULT_ADDR="http://localhost:8200"
```

## Cleanup

After you have finished experimenting with the Go application, you can stop the application by pressing Ctrl+C in the terminal where it is running.

## Notes

- Ensure that your Vault server is properly configured with dynamic database secrets and that it has the necessary roles and policies to generate credentials.

- This Go application is a simple demonstration and may require further customization for use in a production environment.

- Make sure to secure your Vault environment following best practices for production deployments.

Enjoy using the Go application to showcase dynamic database credentials from HashiCorp Vault!
