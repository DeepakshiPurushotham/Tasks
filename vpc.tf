data "aws_vpc" "default-vpc" {
    default = true
  
}
data "aws_subnets" "subnet" {
  vpc_id = data.aws_vpc.default-vpc.id
}
