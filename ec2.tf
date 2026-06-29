locals  {
    instance_name = "${terraform.workspace}-instance"
}
resource "aws_instance" "web" {
    ami = "ami-0521cb2d60cfbb1a6"
    instance_type = var.instance_type
    key_name = "naveen150vpc"
    tags = {
        Name = local.instance_name
    }
}