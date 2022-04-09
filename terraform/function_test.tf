resource "null_resource" "resume_function_test" {
  provisioner "local-exec" {
    command = "./resumeFunctionTest.sh"
  }
}