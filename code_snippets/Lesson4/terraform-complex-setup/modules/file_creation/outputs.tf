output "created_files" {
  value = local_file.random_named_file[*].filename
}
