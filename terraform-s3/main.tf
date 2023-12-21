resource "aws_s3_bucket" "mybucket" {
  bucket = "my-bucket121test" 

  tags = {
    Name        = "MyS3Bucket"
    Environment = "jenkins"
  }
}

