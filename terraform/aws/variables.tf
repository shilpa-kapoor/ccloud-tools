variable "global_prefix" {

  default = "ccloud-tools"

}

variable "aws_region" {

  default = "us-east-1"

}

variable "aws_availability_zones" {

  type = "list"

  default = ["us-east-1a", "us-east-1b", "us-east-1c"]

}

variable "instance_count" {

  type = "map"

  default = {

    "rest_proxy"       =  1
    "kafka_connect"    =  1
    "ksql_server"      =  1
    "control_center"   =  1
    "bastion_server"   =  0

  }

}

variable "confluent_platform_location" {

  default = "http://packages.confluent.io/archive/5.1/confluent-5.1.2-2.11.zip"

}

variable "confluent_home_value" {

  default = "/etc/confluent/confluent-5.1.2"

}