resource "aws_iam_user" "jyb" {
  name = "jyb"
}

resource "aws_iam_user_policy" "art_devops_black_for_jyb" {
  name = "super-admin"
  user = aws_iam_user.jyb.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}
