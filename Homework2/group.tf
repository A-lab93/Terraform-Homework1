resource "aws_iam_group" "blackpink" {
  name = "blackpink"
  
} 
resource "aws_iam_group_membership" "blackpink2" {
  name = "tf-testing-group-membership"

  users = [ 

    for i in aws_iam_user.hm : i.name
    
  ]

  group = aws_iam_group.blackpink.name
}