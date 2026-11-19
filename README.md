
# AWS S3 Bucket Provisioning with Terraform

## Project Overview

This project demonstrates how to provision and secure an Amazon S3 bucket using Terraform (Infrastructure as Code).

The project was completed as part of the NextWork AWS hands-on learning programme.

## Architecture

Terraform communicates with AWS through the AWS provider to provision an S3 bucket and configure its public access restrictions.

## Technologies Used

- Amazon Web Services (AWS)
- Amazon S3
- Terraform
- AWS CLI
- HCL (HashiCorp Configuration Language)

## AWS Configuration

**AWS Region:** ap-southeast-5 (Malaysia)

### Resources Created

| Resource | Purpose |
|---|---|
| aws_s3_bucket | Creates an Amazon S3 bucket |
| aws_s3_bucket_public_access_block | Blocks public access to the bucket |

### Security Implementation

Configured all four S3 public access block settings:

- Block public ACLs
- Ignore public ACLs
- Block public bucket policies
- Restrict public bucket access

This ensures the bucket is protected against public access through these mechanisms.

## Deployment Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Validate Configuration

```bash
terraform validate
```

### 3. Preview Infrastructure Changes

```bash
terraform plan
```

### 4. Deploy AWS Resources

```bash
terraform apply
```

### 5. Verify Deployment

Check the Amazon S3 console to confirm that the bucket was successfully created.

## Project Structure

```text
aws-s3-terraform-project/
├── main.tf
├── .gitignore
├── .terraform.lock.hcl
├── README.md
└── screenshots/
```

## Key Learnings

- Understanding Infrastructure as Code (IaC).
- Provisioning AWS resources using Terraform.
- Managing AWS infrastructure through HCL.
- Implementing S3 public access security configurations.
- Understanding the Terraform deployment workflow.

## Shoutout

A big shoutout to NextWork for their project guide and support. Thank you for exploring this project! I'll continue to build this pipeline and apply my learnings to future projects.
