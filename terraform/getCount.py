import json
import boto3

#grab resources 
db = boto3.resource('dynamodb')
table = db.Table("resume.aaronlangley.net")

def lambda_handler(event, context):
        
        return {
            'statuscode': 200,
            'headers': {
                    'Access-Control-Allow-Origin': 'https://resume.aaronlangley.net',
            },
            'body':
                
                table.get_item(
                Key={
                        'event': 'test',
                },
                ConsistentRead=False,
                ProjectionExpression= 'visits',
                )
        
        }