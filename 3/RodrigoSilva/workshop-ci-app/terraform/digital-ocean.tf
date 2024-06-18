
# resource "digitalocean_app" "workshop-ci" {
#   spec {
#     name   = "workshop-ci"
#     region = "ams"
# 
#     env {
#       key   = "ENVIRONMENT"
#       value = "digital ocean"
#       type  = "GENERAL"
#     }
# 
#     service {
#       name               = "go-service"
#       environment_slug   = "go"
#       instance_count     = 1
# 
#       git {
#          repo_clone_url = "https://github.com/rodrigo-silva7/workshop-ci-app.git"
#          branch         = "homolog"
#       }
#     }
#   }
# }
