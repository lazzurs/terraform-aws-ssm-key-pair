# terraform-aws-ssm-key-pair

Module that will generate a TLS key pair, store the public key as an AWS key pair and put all of the outputs in AWS SSM Parameter Store.

This module has been written because of the sheer frustration with the existing modules either expecting the use of the Terraform outputs or worst only storing part of the key output in SSM but not all of them making the module either only useful for Linux or Windows and leaving key conversion between key storage types to the user.

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->

## Authors

This module is maintained by Rob Lazzurs and is currently maintained.

## License

This module is licenced under the MIT license to allow the widest possible use. This module is mostly configuration and as such I see no value in using the GPL or similar to ensure continued freedom.
