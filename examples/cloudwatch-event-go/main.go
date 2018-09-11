package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
	"github.com/davecgh/go-spew/spew"
)

// Response is the generic lambda response
type Response struct {
	Message string `json:"message"`
}

// Handler is the main entrypoint for lambda
func Handler(in interface{}) (Response, error) {
	fmt.Println("input:")
	spew.Dump(in)

	return Response{
		Message: "hello world",
	}, nil
}

func main() {
	lambda.Start(Handler)
}
