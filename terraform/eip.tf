resource "aws_eip" "eip_1" {
  depends_on = [aws_internet_gateway.igw]

  tags = merge(
    local.common_tags,
    tomap({ "Name" : "${local.prefix}-eip-1" })
  )
}

resource "aws_eip" "eip_2" {
  depends_on = [aws_internet_gateway.igw]

  tags = merge(
    local.common_tags,
    tomap({ "Name" : "${local.prefix}-eip-2" })
  )

}
