resource "aws_s3_bucket_policy" "resume" {
  bucket = data.terraform_remote_state.base_state.outputs.resume_aaronlangley_net_id
  policy = jsonencode({

       "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::resume.aaronlangley.net/*"
        },
        {
            "Sid": "2",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EH8JBVD3PCCAH"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::resume.aaronlangley.net/*"
        }
    ]

  })

  #depends_on = [data.terraform_remote_state.base_state.s3.aws_s3_bucket.resume]
   
}