resource "aws_dynamodb_table" "resume" {
  name           = "resume.aaronlangley.net"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "event"
 
  attribute {
    name = "event"
    type = "S"
  }

  tags = {
    purpose   = "cloudresumechallenge"
    Environment = "production"
  }
}


resource "aws_dynamodb_table_item" "event_test" {
  table_name = aws_dynamodb_table.resume.name
  hash_key   = aws_dynamodb_table.resume.hash_key

  lifecycle {
    ignore_changes = all
  }

  item = <<ITEM
{
  "event": {"S": "test"},
  "visits":{"N":"0"}
}
ITEM
}

resource "aws_dynamodb_table_item" "event_prod" {
  table_name = aws_dynamodb_table.resume.name
  hash_key   = aws_dynamodb_table.resume.hash_key

  lifecycle {
    ignore_changes = all
  }

  item = <<ITEM
{
  "event": {"S": "prod"},
  "visits":{"N":"0"}
}
ITEM
}