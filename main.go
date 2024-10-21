// main.go
package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, Docker with Go!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server starting at :8080")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		panic(err)
	}
}

