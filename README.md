This is a terraform project that uses AWS as its provider and helps build a working VPC network spanning across two availability zones.
<br></br>
## Features:
- two public subnets spanning across two availability zones
- two private subnets spanning across two availability zones
- public and private route tables
- NAT gateway in one public availability zone
- outputs to easily find important ids and ips of resources
- a internet gateway for public subnet access to internet
- a NAT gateway to connect private subnets to the internet gateway
- a eip to connect to NAT gateway to have public ip address
<br>
  

## Prerequisites:
- terraform installed
- an aws account with credentials configured
- have the correct permissions within your aws account
<br>

## Usage:
```bash
terraform init # download providers
terraform validate # make sure that all of your syntax is valid
terraform plan # confirming all the resources you are planning to create before you do
terraform apply # creating all of the resources within your files
terraform destroy # destroying everything that was created with terraform apply
```
<br>

## Architecture Decisions:
This project only uses one NAT gateway in one public subnet instead of both public subnets. I decided to do this because one NAT gateway is much cheaper to run 
than two and that is only a project. Therefore, I decided that one was best for my project.

If there was ever an outage, the private subnets would no longer have access to the internet. In this use case, if there needed 
to be no downtime from the internet, having a NAT gateway in both public subnets would be the correct option.
<br>

## Architecture:
<br>
<img width="664" height="371" alt="Screenshot 2026-09-18 155042" src="https://github.com/user-attachments/assets/5060369a-5a60-45b3-b42d-b04cafa5edaf" />
