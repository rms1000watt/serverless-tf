package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

// Handler processes the API Gateway proxy request
func Handler(request events.APIGatewayCustomAuthorizerRequestTypeRequest) (events.APIGatewayCustomAuthorizerResponse, error) {
	// Check request.Headers or something to authorize

	fmt.Println("Returning Policy")
	return events.APIGatewayCustomAuthorizerResponse{
		PolicyDocument: events.APIGatewayCustomAuthorizerPolicy{
			Statement: []events.IAMPolicyStatement{
				{
					Effect:   "Allow",
					Action:   []string{"*"},
					Resource: []string{"*"},
				},
			},
		},
	}, nil
}

func main() {
	lambda.Start(Handler)
}
