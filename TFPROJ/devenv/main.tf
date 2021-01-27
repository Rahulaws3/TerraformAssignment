module "my_vpc"{
	source="../modules/network-vpc"
	v_vpc_cidr="192.168.0.0/16"
	v_vpc_id=module.my_vpc.v_vpc_id
	v_sn1=module.my_vpc.v_sn1
}
 module "my_app_res"{
   source="../modules/elb-asg-sg"
   v_it="t2.micro"
   v_desire=1
   v_min=1
   v_max=5
   v_keyname="27jan"
   v_vpc_id=module.my_vpc.v_vpc_id
   v_sn1_ids=module.my_vpc.v_sn1
   v_vpc_cidr="192.168.0.0/16"
}

