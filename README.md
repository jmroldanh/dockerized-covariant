# dockerized-covariant
Dockerize flask service

# Packer Ubuntu AMI to AWS EC2
Invoke with
```
packer build -var-file=aws-packer-keys.json ubuntu-image-packer.json
```

AWS keys json file not included in the repository for security. These variables should be injected via an external keys storage like Vault or Consul

# Terraform deploy AMI to AWS EC2

## Terraform local run
We need to export the AWS keys as environment variables before running terraform.
In the console:

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

## Terraform apply with GitHub Actions
Github actions executes terraform apply creating a security group and deplying the AMI into an active instance.
The security group part is not idempotent at this time, if it already exists the whole terraform apply proccess fails.
