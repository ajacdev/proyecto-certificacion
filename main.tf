provider "docker" {
  host = "unix:///var/run/docker.sock"
}
resource "docker_image" "proyecto_certificacion_image" {
  name = "proyecto-certificacion"
  build {
    context = "."
  }
}
resource "docker_container" "proyecto_certificacion_container" {
  image = docker_image.proyecto_certificacion_image.latest
  name  = "proyecto-certificacion"
  ports {
    internal = 8080
    external = 8080
  }
}
