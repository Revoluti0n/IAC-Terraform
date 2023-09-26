# Provedor utilizado para criar a infraestrutura
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
# Região
provider "aws" {
  region  = "us-west-2"
}
# Informações sobre o recurso a ser criado
resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"  # Imagem do sistema que será utilizado, neste caso Ubuntu Server 22.04 LTS (Obs: muda de acordo com a região)
  instance_type = "t2.micro"  # Tipo de máquina
  key_name = "alura-iac"
  tags = {
    Name = "Minha Instancia"  # Nome da instancia
  }
}