output "container-name" {
  value = docker_container.nodered_container[*].name
  description = "The name of the container"
}

output "IP-Address" {
  value = [for i in docker_container.nodered_container[*]: join(":", [i.ip_address],)]
  description = "The IP address and external port of the container"
  sensitive = true
}

