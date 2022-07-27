resource "aws_s3_bucket" "test" {
    bucket = "${var.repo-name}-test-bucket-039329"
    tags = {
        environment = "dev"
        funciton = "development" 
        platform = "terraform"
    }
}