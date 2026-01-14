terraform {
	required_providers {
		aws = {
		source  = "hashicorp/aws"
      		version = "~> 6.0"	
}
}


backend "s3" {
	bucket = "terraform-demo-bucket-123-987"
	key = "terraform.tfstate"
	region = "ap-south-1"
	dynamodb_table = "terraform-demo-state-table"
}

}
