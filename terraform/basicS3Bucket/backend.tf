#create S3 Buckets
resource "aws_s3_bucket" "mybucket" {
    bucket = var.bucket
}

resource "aws_s3_bucket_versioning" "version" {
    bucket = aws_s3_bucket.mybucket.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
    bucket = aws_s3_bucket.mybucket.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm     = "AES256"
        }
    }
}

#create dynamoDB
resource "aws_dynamodb_table" "statelock" {
    name = "state-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}
