### Practical Task 1: Linux Virtual Machine Setup and NSG Configuration
#### Create and configure a Linux Virtual Machine (VM) on Azure and secure it with a Network Security
#### Group (NSG).
#### Requirements:
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
1. **VNET was created**
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
#### Create and configure a Basic Azure Load Balancer to distribute traffic across multiple virtual
#### machines.
#### Requirements:
1. **Create two Linux or Windows virtual machines in the same region and virtual network using**
**the Azure Free Tier.**
2. **Install and configure a web server (e.g., Nginx on Linux or IIS on Windows) on both VMs with****
**unique content for testing.**
3. **Create a Basic Load Balancer in Azure (included in the free tier) and configure it to balance**
**HTTP (port 80) traffic between the two virtual machines.**
4. **Configure a health probe to monitor the availability of the VMs.**
5. **Test the Load Balancer by accessing its public IP address from a browser and verify that**
**traffic is routed to both VMs (by observing the unique content from each server).**
6. **Verify that the Load Balancer removes unavailable VM from the traffic pool when it fails the**
**health probe.**


### Practical Task 4: Configuring a Basic Load Balancer with Virtual Machine Scale Sets (VM
#### Practical Task 4: Configuring a Basic Load Balancer with Virtual Machine Scale Sets (VMSS)
#### Set up a Basic Azure Load Balancer to distribute traffic across a Virtual Machine Scale Set (VMSS).
#### Requirements:
1. **Create a Virtual Machine Scale Set (VMSS) in Azure using Linux or Windows instances**
**within the free tier (for example B1s size). Limit the scale set to two VM instances to avoid**
**exceeding the free-tier 750-hour limit.**
2. **Deploy the scale set with a custom configuration to install and configure a web server (e.g.,**
**Nginx on Linux or IIS on Windows) on each VM instance.**
3. **Configure the Basic Load Balancer to distribute HTTP (port 80) traffic across the VM**
**instances in the scale set.**
4. **Add a health probe to monitor the availability of instances in the VMSS.**
5. **Scale the VMSS manually by increasing the number of instances to verify the Load Balancer**
**routes traffic to the newly added VMs.**
6. **Test the setup by accessing the Load Balancer's public IP address and verifying traffic**
**distribution across multiple VM instances.**
7. **Verify that the Load Balancer removes an unavailable instance from the traffic pool when it**
**fails the health probe.**


#### Note:
1, Add bastion to comunucate with VMs in VMSS

#### Question:
1. How to move VMSS to anather subnet?
2. Is bastion can access VMs that are in/AzureBastionSubnet only?
3. Not fully understand usag of NIC during VMSS creation
4. Plan to set up Vss+Dasic LB+Bastion+VM SturtUp Configuration
