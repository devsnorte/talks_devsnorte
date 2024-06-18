terraform {
   required_providers {
      heroku = {
         source = "heroku/heroku"
         version = "~> 5.0"
      }

      digitalocean = {
         source = "digitalocean/digitalocean"
         version = "~> 2.0"
      }

      fly = {
         source = "fly-apps/fly"
         version = "0.0.10"
      }

   }
}

provider "heroku" {
   email = "rodrigo.silva7@yahoo.com.br"
   # api_key = "<HEROKU_API_KEY>"
}

provider "digitalocean" {
   # token = "<DIGITALOCEAN_TOKEN>"
}

provider "fly" {
   # flytoken = "<FLY_TOKEN>"
}
