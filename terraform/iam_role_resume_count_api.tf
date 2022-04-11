resource "aws_iam_role" "resume_count_api" {
  name = "ResumeAPI_DynamoDBAccess"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}


resource "aws_iam_role_policy" "resume_count_policy" {
  name = "ResumeAPI_Policy"
  role = aws_iam_role.resume_count_api.id
  policy = jsonencode(
    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "dynamodb:UpdateItem",
                "dynamodb:GetItem"
            ],
            "Resource": [
                "${aws_dynamodb_table.resume.arn}"
            ]
        },
    ]
    }
  )
}