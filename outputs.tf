output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.subnet.subnet_id  # Adjust this based on how subnet module exposes subnet_id
}
