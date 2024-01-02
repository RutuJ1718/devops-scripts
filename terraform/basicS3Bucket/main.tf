resource "aws_instance" "Server" {
    ami = var.OS
    instance_type = var.Size
    tags = {
        name = "this my instance"
    }
}
