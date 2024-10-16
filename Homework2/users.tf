resource "aws_iam_user" "hm" {
    for_each = toset(["Jenny", "Rose", "Lisa", "Jisoo" ])
  name = each.value 
  
  
} 