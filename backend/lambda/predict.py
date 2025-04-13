import json  
import torch  
from transformers import pipeline  

# Load model ONCE when Lambda cold starts  
model = pipeline("text-classification", device="cpu")  

def lambda_handler(event, context):  
    text = json.loads(event["body"])["text"]  
    return {  
        "statusCode": 200,  
        "body": json.dumps(model(text))  
    }  