Terraform task:

### Practical Task 1: Install, Configure, and Manage Terraform State in Azure
#### Requirements:
• Install Terraform on your local machine.
• Verify the installation by checking the Terraform version.
• Authenticate with Azure using az login and configure Terraform for Azure authentication.
• Create a Terraform backend configuration using an Azure Storage Account to store the
Terraform state remotely:
o Define a storage account, a container, and a blob in Terraform configuration.
o Use terraform init to initialize the backend.
o Run terraform apply to deploy the storage account for state management.
o Verify that the Terraform state file is stored in the Azure Storage Account.
o Implement basic state locking using Azure blob storage.
o Destroy the storage account (after confirming the state behavior).

#### Notes:
1. Authenticating using a Service Principal with a Client Secret

Questions:
1. RG for tf state?
