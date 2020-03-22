# dockerized-covariant
Dockerize flask service

# Packer Ubuntu AMI to AWS EC2
Invoke with
```
packer build -var-file=aws-packer-keys.json ubuntu-image-packer.json
```

AWS keys json file not included in the repository for security. These variables should be injected via an external keys storage like Vault or Consul
