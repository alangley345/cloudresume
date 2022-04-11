data "terraform_remote_state" "base_state" {
    backend = "s3"
        config = {
            bucket = "myterraformcode"
            key    = "prod/base_state.tf"
            region = "us-east-1"
        }
}