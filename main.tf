resource "aws_s3_bucket" "test" {
    bucket = "${var.repo-name}-test-bucket-0393829"
    tags = {
        environment = "dev"
        funciton = "development" 
        platform = "terraform"
    }
}