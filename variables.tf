variable "key_algorithm" {
  type        = string
  default     = "RSA"
  description = "Algorithm for key generation"

  validation {
    condition     = contains(["RSA", "ECDSA", "ED25519"], var.key_algorithm)
    error_message = "Key algorithm must be RSA, ECDSA, or ED25519."
  }
}

variable "key_bits" {
  type        = number
  default     = 4096
  description = "Key length in bits"

  validation {
    condition = (
      (var.key_algorithm == "RSA" && contains([1024, 2048, 4096], var.key_bits)) ||
      (var.key_algorithm == "ECDSA" && contains([256, 384], var.key_bits)) ||
      (var.key_algorithm == "ED25519" && var.key_bits == 256)
    )
    error_message = "Valid RSA lengths: 1024, 2048, 4096. ECDSA: 256, 384. ED25519: 256 only."
  }
}

variable "ssm_prefix" {
  type        = string
  description = "Prefix for SSM parameter names"

  validation {
    condition     = length(var.ssm_prefix) > 0
    error_message = "SSM prefix must not be empty."
  }
}

variable "key_name" {
  type        = string
  description = "Name of the key pair"

  validation {
    condition     = length(var.key_name) > 0
    error_message = "Key name must not be empty."
  }
}
