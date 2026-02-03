resource "aws_iam_role" "service_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = var.trusted_service
      }
      Action = "sts:AssumeRole"
    }]
  })

  tags = var.tags
}
