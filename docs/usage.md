# {{SERVICE_NAME}} Usage Guide

This document provides instructions on how to use and configure the `{{SERVICE_NAME}}` service deployed with this template.

## Prerequisites

- [List any prerequisites, e.g., Docker, kubectl, Terraform]

## Configuration

- Refer to the `.env.example` file for environment variables.
- Common configuration files (if any) are located in the `common/` directory.

## Deployment

Follow the instructions in the README specific to your chosen deployment method (Docker Compose, Terraform, Helm).

### Docker Compose

(Add specific instructions if Docker Compose is included)

```bash
# Example commands
cd docker-compose
cp service.env.example service.env
# Edit service.env
docker-compose up -d
```

### Terraform + Cloud-Init

(Add specific instructions if Terraform is included)

```bash
# Example commands
cd terraform-cloudinit
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars
terraform init
terraform plan
terraform apply
```

### Helm (Kubernetes)

(Add specific instructions if Helm is included)

```bash
# Example commands
cd helm-kubernetes
helm install {{SERVICE_NAME_LOWERCASE}} . -f values.yaml --namespace your-namespace
```

## Accessing the Service

[Describe how to access the deployed service, e.g., default URL, ports]

## Troubleshooting

[Add common troubleshooting tips] 