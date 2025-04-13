resource "aws_lambda_function" "ai_predict" {  
  function_name = "ai-predict"  
  handler       = "predict.lambda_handler"  
  runtime       = "python3.9"  
  s3_bucket     = aws_s3_bucket.model_bucket.id  
  s3_key        = "model.zip"  
  memory_size   = 3008  # Max for free tier  
}  

resource "aws_api_gateway_rest_api" "ai_api" {  
  name = "serverless-ai-api"  
}  