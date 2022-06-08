resource "aws_iam_role" "CodeDeploy" {
  name = var.CodeDeploy.name
  assume_role_policy = "${file("./iam/CodeDeploy.json")}"

  tags = {
    name = var.CodeDeploy.name
  }
}

resource "aws_iam_role_policy_attachment" "EC2_CodeDeploy" {
  role       = aws_iam_role.CodeDeploy.name
  policy_arn = data.aws_iam_policy.EC2Policy.arn
}