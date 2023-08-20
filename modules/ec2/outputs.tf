#outputs.tf
# print in the scren  some information about  VM
output "public_ip"{
 value = aws_instance.server.public_ip
}
