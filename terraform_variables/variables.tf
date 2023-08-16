variable "filename" {
    default = "/home/ubuntu/terraform-learning/terraform_variables/autommated_file.txt"

}

variable "content" {
    default = "this file is created using terraform variables file"
}


variable "devops_learn" {}

#variable types
#map
variable "content_map" {
    type = map
    default = {
        "file1" = "/home/ubuntu/terraform-learning/terraform_variables/varfile.txt"
        "content1" = "this is a cool content"
        "content2" = "this is more cooler content"
    }
}

#list
variable "list_file" {
    type = list
    default = ["/home/ubuntu/terraform-learning/terraform_variables/file1.txt","/home/ubuntu/terraform-learning/terraform_variables/file2.txt"]
}


#object
variable "aws_ec2_object" {
    type = object({
        name = string 
        instances = number
        keys = list(string)
        ami = string
    })
    default = {
        name = "ec2_instance_test"
        instances = 4
        keys = ["key1.pem","key2.pem","key3.pem","key4.pem"]
        ami = "ubuntu"
    }
}
