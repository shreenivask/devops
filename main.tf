locals {
  file_path = "${path.module}/tf_file_path_"
}

locals {
  count_num = 3
}
resource "local_file" "tf_example1" {
  content  = "Example1 file content"
  filename = "${var.file_path}1.txt"
}

resource "local_file" "tf_example2" {
  content  = "Example2 file content"
  filename = "${var.file_path}2${count.index}.txt"
  count = "${local.count_num}"
}