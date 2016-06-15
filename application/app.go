package main

import (
	"io"
	"net/http"
	"log"
	"os"
)

func hello(w http.ResponseWriter, r *http.Request) {
	// get the hostname
	name, err := os.Hostname()
	if err != nil {
			panic(err)
	}
	// send webserver response
	io.WriteString(w, "Hello world from "+ name +" !")

	log.Println("Request received")
}

func main() {
	log.Println("Server is starting and listening on internal port 80!")
	http.HandleFunc("/", hello)
	http.ListenAndServe(":80", nil)
}