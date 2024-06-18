package controller

import(
   "testing"
)

func TestStatusResponse(t *testing.T) {
   resp := StatusResponse()
   if resp["status"] != "UP" {
      t.Errorf("Resposta de Status errada!")
   }
}
