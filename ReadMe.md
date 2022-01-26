# Terraform Module: ec2 going bigger than ever

**Home** |
[Change Log](docs/ChangeLog.md)

---

To take advantage of this Terraform Module, the team have created a [Module Boilerplate](#module-boilerplate) that can be used as a starting point.

Review the list of [Required](#required-inputs) and [Optional](#optional-inputs) Inputs below to better understand how to configure this Terraform Module.

## Contents

- [Requirements](#requirements)
- [Module Boilerplate](#module-boilerplate)
- [Terraform Examples](#terraform-examples)
- [Required Inputs](#required-inputs)
- [Optional Inputs](#optional-inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Other Links](#other-links)

### Requirements

Scripts must meet to the following requirements for this Terraform Module to deploy successfully: -

| Name | Version |
| :--- | :--- |
| terraform | `>= 1.0` |
| aws | `>= 3.51.0` |

### Module Boilerplate

This boilerplate can be used to help speed up the integration of this Terraform Module: -

```hcl
module "ec2_tester" {
  source          = "git::https://github.com/SeanMcCann93/terraform-test-chamber.git"
  ami             = ""
  key_name        = ""
  name            = ""
  subnet_id       = ""
  vpc_sg          = [""]
  ebs_optimized   = false
  encrypt_storage = true
  instance_type   = "t2.micro"
  protect         = false
  public_ip       = false
  storage_size    = 5
  storage_tags = {
    "key" = "value"
  }
  tags = {
    "key" = "value"
  }
  user_data       = null
}
```
### Terraform Examples

Hello this is where the exta crap can go :) !

### Required Inputs

To successfully launch this Terraform Module, the following values **must** be applied: -

| Input Name | Description | Type |
| :--- | :--- | :--- |
| [**`ami`**](variables.tf#L5) | Amazon Machine Image ID `ami-*` | <pre><code>string</code></pre> |
| [**`key_name`**](variables.tf#L37) | Pem Key attached to Instance `keyName.pem` | <pre><code>string</code></pre> |
| [**`name`**](variables.tf#L43) | Machine and storage name `tc-` | <pre><code>string</code></pre> |
| [**`subnet_id`**](variables.tf#L87) | Subnet the EC2 is to reside within `subnet-` | <pre><code>string</code></pre> |
| [**`vpc_sg`**](variables.tf#L111) | Allocated Security Groups `sg-` | <pre><code>list(string)</code></pre> |

### Optional Inputs

To overwrite the default values or provide further context, the following can be applied: -

| Input Name | Description | Type | Default Value |
| :--- | :--- | :--- | :--: |
| [**`ebs_optimized`**](variables.tf#L16) | Optimize the EBS block storage `true` | <pre><code>bool</code></pre> |<pre><code>false</code></pre>|
| [**`encrypt_storage`**](variables.tf#L23) | Encrypted storage `false` | <pre><code>bool</code></pre> |<pre><code>true</code></pre>|
| [**`instance_type`**](variables.tf#L30) | Define the instance specification `t2.micro` | <pre><code>string</code></pre> |<pre><code>"t2.micro"</code></pre>|
| [**`protect`**](variables.tf#L54) | If enabled, it will prevent the system from being terminated `true` | <pre><code>bool</code></pre> |<pre><code>false</code></pre>|
| [**`public_ip`**](variables.tf#L61) | Assign a public IP address to the EC2 Instance `true` | <pre><code>bool</code></pre> |<pre><code>false</code></pre>|
| [**`storage_size`**](variables.tf#L68) | Storage to be given in **GB** `10` (must be a whole number) | <pre><code>number</code></pre> |<pre><code>5</code></pre>|
| [**`storage_tags`**](variables.tf#L80) | Map of tags to assign to the attached EBS `key = value` | <pre><code>map(any)</code></pre> |-|
| [**`tags`**](variables.tf#L98) | Map of tags to assign to the EC2 instance `key = value` | <pre><code>map(any)</code></pre> |-|
| [**`user_data`**](variables.tf#L105) | Commands to run at the start of the instance | <pre><code>any</code></pre> |-|

### Outputs

When this Terraform Module is deployed, the following outputs can be extracted: -

> By taking advantage of the [Outputs Boilerplate](docs/.output.tf), you can quickly aquire all possible outputs from this module.

| Output Name | Description |
| :--- | :--- |
| [**`arn`**](outputs.tf#L1) | The Amazon Resource Name of the deployed instance |
| [**`availability_zone`**](outputs.tf#L6) | Availability Zone the deployed instance now resides |
| [**`credit_specification`**](outputs.tf#L11) | The credit specification of the instances CPU usage (`standard` or `unlimited`) |
| [**`ebs_block_device_volume_ids`**](outputs.tf#L16) | List of EBS block storage volume IDs attached to the deployed instance |
| [**`id`**](outputs.tf#L21) | Deployed Instance ID |
| [**`instance_state`**](outputs.tf#L26) | Current instance state |
| [**`ipv6_addresses`**](outputs.tf#L31) | The assigned IPv6 address assigned to the deployed instance |
| [**`key_name`**](outputs.tf#L36) | Key assigned to the deployed instance |
| [**`metadata_options`**](outputs.tf#L41) | Any metadata options applied to the deployed instance |
| [**`password_data`**](outputs.tf#L46) | Base-64 encoded encrypted password data |
| [**`placement_group`**](outputs.tf#L51) | Placement group assigned |
| [**`primary_network_interface_id`**](outputs.tf#L56) | ID of the primary network interface |
| [**`private_dns`**](outputs.tf#L61) | List of private DNS names assigned. (Only be used inside the Amazon EC2 + DNS hostnames for your VPC is enabled.) |
| [**`private_ip`**](outputs.tf#L66) | The Private IP address assigned to instance |
| [**`public_dns`**](outputs.tf#L71) | Public DNS names assigned (Only available if you've enabled DNS hostnames for your VPC) |
| [**`public_ip`**](outputs.tf#L76) | The Public IP addresses assigned (If applicable) |
| [**`root_block_device_volume_ids`**](outputs.tf#L81) | The root block storage volume IDs attached to the deployed instance |
| [**`security_groups`**](outputs.tf#L86) | List of Security Groups attached to the deployed instance |
| [**`subnet_id`**](outputs.tf#L91) | The ID of the subnets the deployed instance resides |
| [**`tags`**](outputs.tf#L96) | Map of tags applied to the deployed instance |
| [**`volume_tags`**](outputs.tf#L101) | Map of tags applied to the deployed EBS storage volumes |
| [**`vpc_security_group_ids`**](outputs.tf#L106) | List of security group IDs applied from the parent VPC (If running in a non-default VPC) |

### Resources

This Terraform Module is calling the following for the resources to be deployed: -

| Name | Type | Provider | Link |
| :--- | :--- | :--- | :-- |
| [**`ec2`**](main.tf#L1) | `instance` | hashicorp/aws |  https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance |

#### Other Links

| Name                     | Link                                                              |
| :----------------------- | :---------------------------------------------------------------- |
| Terraform AWS Registry   | https://registry.terraform.io/providers/hashicorp/aws/latest/docs |
| Terraform Docs Submodule | [./.terraform-docs/ReadMe.md](./.terraform-docs/ReadMe.md)        |
| Contribute               | [./docs/Contribute.md](docs/Contribute.md)                         |

[Return to Top](#)


###### Copyright &copy; LTD 2022 - *Deployable* module: terraform-docs v0.16.0 | tfdocs V0.6.0 