#terraform block
terraform {
    required_providers{
        docker = {
            source = "kreuzwerker/docker"
            version = "3.0.2"
        }
    }
}

#provider block
provider "docker" {}

#resource block

resource "docker_image" "nginx" {
    name = "nginx:latest"
    keep_locally = false
}

resource "docker_container" "nginx_container" {

    #image name should be passed correctly -> resource_type.resource_name.name of image
    image = docker_image.nginx.name
    name = "nginx_docker_tf"
    ports {
        internal = 80
        external = 80
    }

}
