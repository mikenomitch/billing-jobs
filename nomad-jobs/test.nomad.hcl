job "test" {
  namespace = "financial"
  type = "service"

  group "test-group" {
    count = 2

    task "test-task" {
      driver = "docker"

      config {
        image = "nginx:latest"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
