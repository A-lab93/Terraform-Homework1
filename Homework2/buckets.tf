resource "aws_s3_bucket" "bucket1" {
  bucket = "kaizen-anam" 
   force_destroy = true 

  
} 
resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "kaizen-" 
 
 

  
} 
resource "aws_s3_bucket" "ana-mihai1" {
  bucket = "ana-mihai1"

  
} 
resource "aws_s3_bucket" "ana-mihai2" {
  bucket = "ana-mihai2"

  
} 
#terraform import 'aws_s3_bucket.ana-mihai1' ana-mihai1
#terraform import 'aws_s3_bucket.ana-mihai2' ana-mihai2