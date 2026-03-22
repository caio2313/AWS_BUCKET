variable "location_aws" {
  description = "Região onde os recursos serão criados na AWS."
  type = string
  default = "sa-east-1"
}

variable "bucket_name_AWS" {
  description = "Nome do bucket S3 a ser criado."
  type = string
  default = "my-data-lake-bucket"
}
