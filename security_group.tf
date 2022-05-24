resource "aws_security_group" "aceso_geral" {
    name    =   "acesso_geral"
    description     = "Teste para o cloud one Conformity"
    ingress {
        cidr_blocks = [ 
            "0.0.0.0/0", 
            ]
            description = "Para acesso a máqquina com as portas Liberadas"
            from_port = 0
            ipv6_cidr_blocks = [ 
                "::/0",
                 ]
                 prefix_list_ids = []
                 protocol = "1"
                 security_groups = []
                 self = false
                 to_port    = 0
    } #InBound
     egress = [ {
        cidr_blocks = [ 
             "0.0.0.0/0",
            ]
                 description = ""
                 from_port = 0
                 ipv6_cidr_blocks = [ 
               "::/0",
               ]
                prefix_list_ids = []
                protocol = "-1"
                security_groups = []
                self = false
                to_port = 0
    } ]
    #OutBound

    tags = {
      "Name" = "acesso_geral"
    }
  
}