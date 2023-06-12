locals {
  custom_pages = { for idx, item in var.custom_pages : item["url"] => item }
}
