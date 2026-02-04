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

resource "aws_iam_policy" "read_only_policy" {
  name        = "sif-read-only-policy"
  description = "Minimal read-only access for SIF validation"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "iam:GetRole",
          "iam:ListAttachedRolePolicies"
        ]
        Resource = "arn:aws:iam::123456789012:role/sif-*"
      }
    ]
  })
}

resource "aws_iam_user" "limited_user" {
  name = "sif-sandbox-user"
}

resource "aws_iam_group" "read_only_group" {
  name = "sif-read-only-group"
}

resource "aws_iam_group_policy_attachment" "group_attach_policy" {
  group      = aws_iam_group.read_only_group.name
  policy_arn = aws_iam_policy.read_only_policy.arn
}

resource "aws_iam_user_group_membership" "user_membership" {
  user   = aws_iam_user.limited_user.name
  groups = [aws_iam_group.read_only_group.name]
}

