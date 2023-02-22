├── vpc
│   ├── main.tf
│   └── variables.tf
├── subnet
│   ├── main.tf
│   └── variables.tf
├── route-table
│   ├── main.tf
│   └── variables.tf
├── security-group
│   ├── main.tf
│   └── variables.tf
├── rds
│   ├── main.tf
│   └── variables.tf
├── load-balancer
│   ├── main.tf
│   └── variables.tf
├── auto-scaling
│   ├── main.tf
│   └── variables.tf
├── variables.tf
├── provider.tf
└── outputs.tf

terraform init
terraform apply -var 'ami_id=ami-0123456789abcdef0'
terraform destroy -var 'ami_id=ami-0123456789abcdef0'
