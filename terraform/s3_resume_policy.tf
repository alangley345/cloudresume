resource "aws_s3_bucket_policy" "resume" {
  bucket = aws_s3_bucket.resume.id
  policy = jsonencode({

    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "PublicReadGetObject",
        "Effect" : "Allow",
        "Principal" : "*",
        "Action" : "s3:GetObject",
        "Resource" : "${aws_cloudfront_origin_access_identity.resume.arn}"
      },
      {
        "Sid" : "2",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "${aws_cloudfront_distribution.resume.id}"
        },
        "Action" : "s3:GetObject",
        "Resource" : "${aws_s3_bucket.resume.arn}/*"
      }
    ]

  })

  depends_on = [aws_s3_bucket.resume, aws_cloudfront_distribution.resume]

}