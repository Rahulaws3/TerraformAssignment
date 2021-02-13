1) Created Two Modules 1111
    a) One for Vpc resources
	b) ELB & Autoscalling resources
2) Vpc Module:
     a) created Public and Private Subnets
	 b) Each Az will have one public & Private SN
     c) This VPC Module Required below inputs
	      vpc cidr (Varible :v_vpc_cidr)
     d) It will Return below output variables
	         i) vpc id 
			 ii) List of Subnets Ids
	 e) Created NAT Gateway and attached to Private
        Subnets	 
3) ELB & Autoscalling Module: This Module is below resources:
  My Assumptions:
         --> Application Running port number 80 of ec2
		    instances
	     --> ELB is created in Public Subnets		
         --> ELB SG With Below rules
			        IB -80,443 --> From AnyWhere
					OB --80 
		 --> Reading Latest Ubuntu AMI from "Self"
		      AWS account
		 --> Created Launch Config & and Installing required commaond
		      using userdata
		 --> Create ASG and attached to ELB 
		 --> uploaded own ssh key into aws and attached
		     ASG instances.
		     
3) Floder Struture
    TFPROJ
	   |
	   |
	   ----Modules
	           |
			    -- network-vpc 
	                      mvpc.tf
						  vars.tf
				-- elb-asg-sg 
	                      elb-asg.tf
						  vars.tf
	   ----DevEnv
                |
                |
                 --prv.tf
                 --main.tf
				 --1.sh
				 --tfmykey
				 --tfmykey.pub

Note :
   goto "DevEnv" location run below commonds
            terraform init
            terraform apply			
						  
      			 
	 
	 
