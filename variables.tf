variable "ami" {
    default = {
        "us-west-2-amazon linux 2" = "ami-0022f774911c1d690"
    }
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }
  
}
