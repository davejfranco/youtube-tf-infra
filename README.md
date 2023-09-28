# Demo Terraform module

This is a demo Terraform module that can be used to create a demo infrastructure.

## Requirements
- terraform >= 1.5.0
- aws provider >= 5.0.0

## Usage

```hcl
module "production" {
  source = "./modules/infra"

  name = "prod-youtube"
  #network settings
  vpc_cidr = "10.0.0.0/16"
  private_subnets = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]
  public_subnets = ["10.0.60.0/24", "10.0.70.0/24", "10.0.80.0/24"]
  
  #Server settings
  create_key_pair = true
  public_server_count  = 0 #no public server
  private_server_count = 0

  tags = {
    "Environment" = "production"
  }
}
```
