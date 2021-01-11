output "InstancesPrivateIP" {
    value = module.t2micro_instance.*.ip_address
}

output "InstancesID" {
    value = module.t2micro_instance.*.instance_id
}

output "T4InstancesPrivateIP" {
    value = module.t4large_instance.*.ip_address
}

output "T4InstancesID" {
    value = module.t4large_instance.*.instance_id
}