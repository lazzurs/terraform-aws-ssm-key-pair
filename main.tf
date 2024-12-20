resource "aws_key_pair" "example" {
    key_name   = var.key_name
    public_key = tls_private_key.generated_key.public_key_openssh
}

resource "tls_private_key" "generated_key" {
    algorithm = var.key_algorithm
    rsa_bits  = var.key_bits
}

resource "aws_ssm_parameter" "private_key_openssh" {
    name  = "${var.ssm_prefix}/tls/private_key_openssh"
    type  = "SecureString"
    value = tls_private_key.generated_key.private_key_openssh
}

resource "aws_ssm_parameter" "private_key_pem" {
    name  = "${var.ssm_prefix}/tls/private_key_pem"
    type  = "SecureString"
    value = tls_private_key.generated_key.private_key_pem
}

resource "aws_ssm_parameter" "private_key_pkcs8" {
    name  = "${var.ssm_prefix}/tls/private_key_pkcs8"
    type  = "SecureString"
    value = tls_private_key.generated_key.private_key_pkcs8
}

resource "aws_ssm_parameter" "public_key_openssh" {
    name  = "${var.ssm_prefix}/tls/public_key_openssh"
    type  = "SecureString"
    value = tls_private_key.generated_key.public_key_openssh
}

resource "aws_ssm_parameter" "public_key_pem" {
    name  = "${var.ssm_prefix}/tls/public_key_pem"
    type  = "SecureString"
    value = tls_private_key.generated_key.public_key_pem
}

resource "aws_ssm_parameter" "public_key_pkcs8" {
    name  = "${var.ssm_prefix}/tls/public_key_pkcs8"
    type  = "SecureString"
    value = tls_private_key.generated_key.public_key_pkcs8
}