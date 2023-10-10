variable "ec2_ami" {
  description = "ami id of ec2"
  type        = string
  default     = "ami-0bb4c991fa89d4b9b"
}

variable "ec2_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "public_key" {
  description = "public key for ssh key pair for ec2"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAxsVsjebrisBYA4U16i1xcIRuJP31S5pNrDmLSBXtpDbagJfQCqbvP9s5Htm2yYmI78mw0EtY2595iDoEaNaXGU1+XbzmBVWhw/+m32k7On4ktfPyEag6Eb/flm1bvJoOuZTOEX4z6y1ctVXi1OE98n7O/0FAEI2Cz+QLGZ4w8Gr2NYfrK+iCmxQd1UX9zG0Nmn0NcRLq+LqhCkVZ7NupDObOZTGA1LhOyb/7fNAVoP59O6p/BDJMWOUSguMkVv6Mr7MJzaTxad9oLnsDyu6HA0ONyBzfbfI8olrncC1hbz6iaAgJ+Ouob2L6u28eW7ERi86axyrH6u23ZWvWAQSpsQ== rsa-key-20231009"
}