import json

def lambda_handler(event, context):
    print("Lambda function invoked")
    
    if event.get("httpMethod") == "POST":
        print("Request received with context:", context)

    return {
        "statusCode": 200,
        "body": json.dumps("Hello, World!")
    }
