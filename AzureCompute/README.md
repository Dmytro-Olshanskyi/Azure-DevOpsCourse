### Practical Task 1: Linux Virtual Machine Setup and NSG Configuration
####Create and configure a Linux Virtual Machine (VM) on Azure and secure it with a Network Security
####Group (NSG).
####Requirements:
0. **Create VNET**
Create NATGW
Create NSG
Make subnet privste
Assign MATGW to sunbnet
Assign NSG to subnet
Rooting? 

https://www.youtube.com/watch?v=f5E1lR6fppI

1. **Create a Linux VM (Ubuntu or CentOS) in Azure using the free tier.**
2. **Connect to the VM via SSH using a public-private key pair.**
3. **Install and configure an Nginx web server on the VM.**
4. **Create and configure a Network Security Group (NSG) to allow only HTTP (port 80) and SSH**
(port 22) traffic.
5. **Test access to the Nginx web server from a browser.**
6. **Verify that any other ports are blocked by the NSG.**

#### Notes
1. ** VNET was created**
2. Public IP?
3. NSG for public IP
4. VM with key pair + public IP
5. Connect and install NGINX

. Try Fortinet!
https://www.youtube.com/watch?v=0SofViNhaxI&t=1195s


https://learn.microsoft.com/en-us/iis/manage/creating-websites/scenario-build-a-static-website-on-iis

1. Creat VPC
2. Create Internet GW
3. Set up Linux Vm withnx
4. Install Wwin VM Using the link above.

### Practical Task 3: Configuring an Azure Load Balancer
####Create and configure a Basic Azure Load Balancer to distribute traffic across multiple virtual
####machines.
####Requirements:
1. **Create two Linux or Windows virtual machines in the same region and virtual network using
the Azure Free Tier.**
2. **Install and configure a web server (e.g., Nginx on Linux or IIS on Windows) on both VMs with****
unique content for testing.**
3. **Create a Basic Load Balancer in Azure (included in the free tier) and configure it to balance**
HTTP (port 80) traffic between the two virtual machines.**
4. **Configure a health probe to monitor the availability of the VMs.**
5. **Test the Load Balancer by accessing its public IP address from a browser and verify that**
traffic is routed to both VMs (by observing the unique content from each server).**
6. **Verify that the Load Balancer removes unavailable VM from the traffic pool when it fails the
health probe.**


Practical Task 4: Configuring a Basic Load Balancer with Virtual Machine Scale Sets (VM
