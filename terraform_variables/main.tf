resource "local_file" "devops" {
    filename = "/home/ubuntu/terraform-learning/terraform_variables/normalfile.txt"
    content = "this file is created by terraform using only resource"
}


resource "local_file' "devops_automate" {
    filename = var.filename
    content = var.content
}

resource "local_file' "devops_automated" {
    filename = var.content_map["file1"]
    content = var.content_map["content2"]
}

output "devops_learning" {
    value = var.devops_learn
}

resource "local_file" "devops_map" {
    filename = "/home/ubuntu/terraform-learning/terraform_variables/devops_map_var.txt"
    content = var.content_map["content1"] 
}

resource "local_file" "file1" {
    filename = var.list_file[0]
    content = var.content_map["content1"]  
}

resource "local_file" "file2" {
    filename = var.list_file[1]
    content = var.content_map["content2"] 
}

output "aws_info_int" {
    value = var.aws_ec2_object.instances
}

output "aws_info" {
    value = var.aws_ec2_object
}