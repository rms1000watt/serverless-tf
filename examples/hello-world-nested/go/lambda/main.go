package main

import (
	"github.com/aws/aws-lambda-go/lambda"
)

// Response is the generic lambda response
type Response struct {
	Message string `json:"message"`
}

// Handler is the main entrypoint for lambda
func Handler() (Response, error) {
	return Response{
		Message: "hello world",
	}, nil
}

func main() {
	lambda.Start(Handler)
}
