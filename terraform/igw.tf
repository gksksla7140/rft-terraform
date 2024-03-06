resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(
    local.common_tags,
    tomap({ "Name" : "${local.prefix}-igw" })
  )
}
