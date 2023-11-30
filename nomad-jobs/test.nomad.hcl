job "test" {
  type        = "service"

  group "test-group" {
    count = 1

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
