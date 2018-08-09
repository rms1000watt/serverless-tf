package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

// Result is a generic result from the lambda function
type Result struct {
	Success bool
	Message string
}

// Handler processes S3Event
func Handler(req events.S3Event) (res Result, err error) {
	fmt.Println(req)

	res.Success = true
	return
}

func main() {
	lambda.Start(Handler)
}
