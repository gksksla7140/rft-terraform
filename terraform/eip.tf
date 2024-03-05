resource "aws_eip" "eip_1" {
  depends_on = [ aws_internet_gateway.igw ]
  tags = {
    Name = "${var.app_name}-eip-1"
  }
}

resource "aws_eip" "epi_2" {
    depends_on = [ aws_internet_gateway.igw ]
    tags = {
        Name = "${var.app_name}-eip-2"
    }
  
}