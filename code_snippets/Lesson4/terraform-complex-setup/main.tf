module "file_creation" {
  source        = "./modules/file_creation"
  file_count    = var.file_count
  file_template = "${path.module}/modules/templates/config.tpl"
}