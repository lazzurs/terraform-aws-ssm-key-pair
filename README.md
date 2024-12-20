# terraform-aws-ssm-key-pair

Module that will generate a TLS key pair, store the public key as an AWS key pair and put all of the outputs in AWS SSM Parameter Store.

This module has been written because of the sheer frustration with the existing modules either expecting the use of the Terraform outputs or worst only storing part of the key output in SSM but not all of them making the module either only useful for Linux or Windows and leaving key conversion between key storage types to the user.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ssm_parameter.private_key_openssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_key_pem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_key_openssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_key_pem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [tls_private_key.generated_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | Algorithm for key generation | `string` | `"RSA"` | no |
| <a name="input_key_bits"></a> [key\_bits](#input\_key\_bits) | Key length in bits | `number` | `4096` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the key pair | `string` | n/a | yes |
| <a name="input_ssm_prefix"></a> [ssm\_prefix](#input\_ssm\_prefix) | Prefix for SSM parameter names | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors

This module is maintained by Rob Lazzurs and is currently maintained.

## License

This module is licenced under the MIT license to allow the widest possible use. This module is mostly configuration and as such I see no value in using the GPL or similar to ensure continued freedom.
