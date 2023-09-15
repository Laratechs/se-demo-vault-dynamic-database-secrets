package main

import (
	"context"
	"fmt"
	"log"
	"net/http"
	"os"
	"time"

	"github.com/hashicorp/vault-client-go"
)

func main() {
	log.Println("starting app...")

	roleName := generateCredentials()

	http.HandleFunc("/", homePage(roleName))
	http.ListenAndServe(":3000", nil)
}

func homePage(name string) func(http.ResponseWriter, *http.Request) {

	if name == "" {
		name = "Hello world!"
	}

	return func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, name)
	}
}

func generateCredentials() string {

	ctx := context.Background()

	// prepare a client with the given base address
	client, err := vault.New(
		vault.WithAddress("http://127.0.0.1:8200"),
		vault.WithRequestTimeout(30*time.Second),
	)
	if err != nil {
		log.Fatal(err)
	}

	token := os.Getenv("VAULT_TOKEN")

	if token == "" {
		log.Println("WARN - environment variable VAULT_TOKEN not set!")
		return ""
	}

	// authenticate with a root token (insecure)
	if err := client.SetToken(token); err != nil {
		log.Fatal(err)
	}

	s, err := client.Secrets.DatabaseGenerateCredentials(ctx, "app", vault.WithMountPath("db"))
	if err != nil {
		log.Println("WARN - Invalid VAULT_TOKEN provided!")
		return ""
	}

	return fmt.Sprintln(s.Data["username"])

}
