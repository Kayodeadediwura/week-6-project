resource "aws_security_group" "sg_lb" {
    vpc_id = aws.vpc.main.id
    name = "sg_lb_name"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["192.168.0.0/16"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["192.168.0.0/16"]
    }

    tags = {
        name ="sg_lb_name"
    }
}



