module "iam_test_role" {
  source = "../../modules/identity/aws"

  role_name       = "sif-sandbox-role"
  trusted_service = "ec2.amazonaws.com"

  allowed_actions = [
    "s3:ListBucket"
  ]

  allowed_resources = [
    "arn:aws:s3:::example-bucket"
  ]

  tags = {
    Environment = "sandbox"
    ManagedBy   = "SIF"
  }
}
