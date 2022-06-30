import json
import boto3

#grab resources 
db = boto3.resource('dynamodb')
table = db.Table("resume.aaronlangley.net")

def lambda_handler(event, context):
        
        return {
            'statuscode': 200,
            'headers': {
                    'Access-Control-Allow-Headers': 'Content-Type',
                    'Access-Control-Allow-Origin': 'https://resume.aaronlangley.net',
                    'Access-Control-Allow-Methods': 'GET'
            },
            'body':
                
                table.get_item(
                Key={
                        'event': 'prod',
                },
                ConsistentRead=False,
                ProjectionExpression= 'visits',
                )
        
        }