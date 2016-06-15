package main

import (
	"io"
	"net/http"
	"log"
)

func hello(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello world!")
	log.Println("Request received")
}

func main() {
	log.Println("Server is starting and listening on internal port 80!")
	http.HandleFunc("/", hello)
	http.ListenAndServe(":80", nil)
}