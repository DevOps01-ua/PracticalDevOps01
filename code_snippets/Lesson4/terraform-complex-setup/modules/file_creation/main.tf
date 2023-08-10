resource "random_string" "file_name" {
  count   = var.file_count
  length  = 8
  special = false
  upper   = true
}

resource "local_file" "random_named_file" {
  count    = var.file_count
  content  = templatefile(var.file_template, {
    filename = random_string.file_name[count.index].result
    timestamp = timestamp()
  })
  filename = "./files/${random_string.file_name[count.index].result}.txt"
}