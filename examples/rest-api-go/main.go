package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

// Handler processes the API Gateway proxy request
func Handler(request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	outStr := "hello world from serverless-tf"

	fmt.Println(outStr)
	return events.APIGatewayProxyResponse{Body: outStr, StatusCode: 200}, nil
}

func main() {
	lambda.Start(Handler)
}
