resource "local_file" "devops" {
  filename = "/home/ubuntu/terraform-learning/terraform_local/devops_automate.txt"
  content = " I am learning terraform from 15 Aug 2023"
}

resource "random_string" "rand_str" {
  length = 16
  special = true
  override_special = "!@#$%^&*()_+{}[]~?/<>:"

}

output "rand_str" {
  value = random_string.rand_str[*].result
}

