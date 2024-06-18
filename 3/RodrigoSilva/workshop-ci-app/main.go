package main

import (
	"net/http"
	"os"
   "workshop-ci-app/controller"
)

func main() {
   http.HandleFunc("/", controller.Index)
   http.HandleFunc("/status", controller.Status)

   http.ListenAndServe(":"+os.Getenv("PORT"), nil)
}

