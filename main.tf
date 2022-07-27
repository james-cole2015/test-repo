resource "aws_s3_bucket" "test" {
    bucket = "{var.repo-name}-test-bucket"
    tags = {
        environment = "dev"
        funciton = "development" 
        platform = "terraform"
    }
}