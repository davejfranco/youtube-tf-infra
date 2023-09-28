output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnets" {
  value = module.network.public_subnets
}

output "private_subnets" {
  value = module.network.private_subnets
}

output "public_server_ips" {
  value = aws_instance.public_server.*.public_ip
}

output "private_key" {
  value     = var.create_key_pair ? tls_private_key.server[0].private_key_pem : null
  sensitive = true
}
