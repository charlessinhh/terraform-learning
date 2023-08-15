resource "local_file" "devops" {
    filename = "/home/ubuntu/terraform-learning/terraform_variables/normalfile.txt"
    content = "this file is created by terraform using only resource"
}


resource "local_file' "devops_automate" {
    filename = var.filename
    content = var.content
}