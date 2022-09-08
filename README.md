# Atividade 1 - Cultura e Práticas Devops - Cd
 
## Objetivos: 

Exercitar os seguintes conceitos trabalhados: 
- Criação de workspace no terraform. 
- Configuração do respositório remoto para armazenar os estados do terraform. 
- Provisionar recursos AWS: VPC, Internet Gateway, Subnet, Rotas, Security Group, EC2. 

## Cenário: 
1. Crie uma VPC com endereço 10.0.0.0/16. 
2. Crie um internet gateway e vincule com a VPC. 
3. Crie uma tabela de rotas com permissão total para o destino 0.0.0.0/0 e vincule ao internet gateway e VPC. 
4. Crie uma subnet pública com endereço 10.0.1.0/24 e associe a tabela de rotas e VPC. 
5. Crie um volume de amazon EBS. 
6. Crie um security group e atribui a permissão de entrada para a porta 22 (SSH) e a porta 80 (HTTP). 
7. Crie duas instâncias EC2 com user_data e instale o serviço nginx (docker) nas máquinas. Como exemplo utilize o arquivo ‘nginx.sh’. 
8. Vincule o volume de amazon EBS nas instâncias EC2. 
9. Vincule o security group nas instâncias instâncias EC2. 

## Importante: 
- Todos os recursos deverão ser provisionados na região us-east-1. 
- O recurso aws_instance do terraform contém o argumento user_data que recebe o script de instalação do serviço. Exemplo: 
```
resource "aws_instance" "this" { 
... 
user_data = file(‘nginx.sh’) 
... 
} 
```
- Para criar o volume EBS, utilize a documentação [terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume).