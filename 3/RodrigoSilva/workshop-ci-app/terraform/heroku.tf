
resource "heroku_app" "web-app-develop" {
   name = "devsnorte-iac-example-app"
   region = "us"

   config_vars = {
      ENVIRONMENT = "heroku"
   }

   buildpacks = [
      "heroku/go"
   ]
}

resource "heroku_addon" "cache" {
   app_id = heroku_app.web-app-develop.id
   plan   = "memcachedcloud:30"
   depends_on = [heroku_app.web-app-develop]
}

resource "heroku_addon" "message-queue" {
   app_id = heroku_app.web-app-develop.id
   plan   = "cloudamqp:lemur"
   depends_on = [heroku_app.web-app-develop]
}


