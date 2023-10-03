resource "shoreline_notebook" "debugging_cassandra_processes_using_strace" {
  name       = "debugging_cassandra_processes_using_strace"
  data       = file("${path.module}/data/debugging_cassandra_processes_using_strace.json")
  depends_on = []
}

