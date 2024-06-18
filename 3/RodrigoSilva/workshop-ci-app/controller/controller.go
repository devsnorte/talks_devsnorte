package controller

import (
	"fmt"
	"net/http"
	"os"
   "encoding/json"
)

func Index(w http.ResponseWriter, r *http.Request){
   fmt.Fprintf(w, "Olá Devs Norte!\n\nAmbiente de execução: [%s]", os.Getenv("ENVIRONMENT"))
}

func Status(w http.ResponseWriter, r *http.Request){
   w.WriteHeader(200)
   w.Header().Set("Content-Type","application/json")

   jsonResp, _ := json.Marshal(StatusResponse())
   w.Write(jsonResp)
}

func StatusResponse() map[string]string {
   resp := make(map[string]string)
   resp["status"] = "UP"
   return resp 
}
