resource "aws_s3_bucket" "my_s3_bucket_test123" {
	bucket = "terraform-demo-bucket-123-987"

}

resource "aws_dynamodb_table" "my_dynamodb_table" {
	name = "terraform-demo-state-table"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	attribute  {
		name = "LockID"
		type = "S"
}

}
