package main

import (
	"bytes"
	"errors"
	"fmt"
	"io"
	"os"
	"strings"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/s3"
)

const (
	key  = "bleep.txt"
	body = "Bleeeeeeeeeeep"
)

var (
	bucket string
	svc    *s3.S3
)

func putObject() (err error) {
	input := &s3.PutObjectInput{
		Bucket: aws.String(bucket),
		Key:    aws.String(key),
		Body:   aws.ReadSeekCloser(strings.NewReader(body)),
	}

	result, err := svc.PutObject(input)
	if err != nil {
		fmt.Println("Failed putting object", err)
		return
	}

	if result == nil {
		err = errors.New("result is nil")
	}

	return
}

func getObject() (out string, err error) {
	input := &s3.GetObjectInput{
		Bucket: aws.String(bucket),
		Key:    aws.String(key),
	}

	result, err := svc.GetObject(input)
	if err != nil {
		fmt.Println("Failed putting object", err)
		return
	}

	if result == nil {
		err = errors.New("result is nil")
	}
	defer result.Body.Close()

	b := []byte{}
	buf := bytes.NewBuffer(b)
	io.Copy(buf, result.Body)
	out = buf.String()

	return
}

// Handler processes the API Gateway proxy request
func Handler(request events.APIGatewayProxyRequest) (res events.APIGatewayProxyResponse, err error) {
	if err = putObject(); err != nil {
		fmt.Println("Failed putting object:", err)
		return
	}

	out, err := getObject()
	if err != nil {
		fmt.Println("Failed getting object:", err)
		return
	}

	return events.APIGatewayProxyResponse{Body: out, StatusCode: 200}, nil
}

func setBucket() (err error) {
	bucket = os.Getenv("S3_BUCKET")
	if strings.TrimSpace(bucket) == "" {
		err = errors.New("S3_BUCKET env var not defined")
	}

	return
}

func main() {
	if err := setBucket(); err != nil {
		fmt.Println("Failed setting bucket")
	}

	svc = s3.New(session.New())
	lambda.Start(Handler)
}
