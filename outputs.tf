output "vpc_Id" {

  value = module.vpc.vpc_id

}

output "subnet_Id"{
	value=module.vpc.public_subnets

} 

output "route_table_Ids"{

	value=module.vpc.database_route_table_ids

}
