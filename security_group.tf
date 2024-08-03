# resource "aws_security_group" "mysg" {
#   name        = "mysg"
#   description = "security group"
#   vpc_id      = aws_vpc.myvpc.id

#   tags = {
#     Name = "mysg"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "ssh" {
#   security_group_id = aws_security_group.mysg.id
#   cidr_ipv4         = aws_vpc.myvpc.cidr_block
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }

# resource "aws_vpc_security_group_ingress_rule" "http" {
#   security_group_id = aws_security_group.mysg.id
#   cidr_ipv4         = aws_vpc.myvpc.cidr_block
#   from_port         = 8080
#   ip_protocol       = "tcp"
#   to_port           = 8080
# }



# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
#   security_group_id = aws_security_group.mysg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }