provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source = "../.."

  service = "" // optional (default: folder name)

  functions = [
    {
      file       = "main.go"
      name       = ""        // optional (default: folder name + basename(file))
      runtime    = ""        // optional (default: go1.x)
      handler    = ""        // optional (default: ${basename(file)})
      vendor_cmd = ""        // optional (default: "")

      // optional (default: none)
      events = [
        {
          type          = "http"
          path          = "hello-world" // optional (default: lambda_name (rest-api-go-main))
          method        = ""            // optional (default: GET)
          authorization = ""            // optional (default: NONE)
          stage         = ""            // optional (default: prod)
        },
        {
          type     = "schedule"
          schedule = ""         // optional (default: rate(1 hour))
        },
      ]
    },
  ]
}
