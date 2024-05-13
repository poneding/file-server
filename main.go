package main

import (
	"log"
	"net/http"
	"os"
)

var path = "."

func init() {
	if v := os.Getenv("FS_PATH"); v != "" {
		path = v
	}
}

func main() {
	fs := http.FileServer(http.Dir(path))
	http.Handle("/", fs)

	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatalln("Listen and serve failed:", err)
	}
}