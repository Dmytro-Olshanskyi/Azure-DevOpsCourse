### Practical Task 1: Deploy a Docker Container to Azure Container Instances (ACI) via Azure
### Portal
#### Requirements:
1. **Create a lightweight Docker image for a simple web application (e.g., a Python Flask app)**
**with minimal dependencies to reduce resource usage.**
2. **Push the Docker image to Azure Container Registry (ACR) using a low-cost storage option.**
3. **Use a lightweight ACI instance (e.g., B1s) to deploy the Docker container from ACR.**
4. **Verify the deployment by accessing the web application via the public IP address provided**
**by ACI.**
5. **Remove the ACI container after verifying the deployment to stop billing.**

#### Question:
1. What subnet configuration is used for ACI location?

#### Notes
1. B1s - there is no such configuration

Done

### Practical Task 2: Configure Environment Variables in ACI via Azure Portal
#### Requirements:
1. **Modify your Docker image to read configuration values from environment variables,**
**ensuring minimal environmental complexity.**
2. **Reuse the ACI instance from Task 1 to deploy the container and specify the necessary**
**environment variables.**
3. **Verify that the application is correctly using the environment variables by checking its**
**output.**
4. **Remove the ACI container after verifying that the application correctly uses the**
**environment variables.**

#### Notes
1. Web app for checking env var created.

Done.

### Practical Task 3: Scale Out with Azure Container Instances via Azure Portal
#### Requirements:
1. **Deploy a stateless Docker container to Azure Container Instances using a lightweight**
**configuration (e.g., B1s instances).**
2. **Manually scale out to the minimum number of instances required (e.g., 2–3) to test load**
**distribution.**
3. **Stop all ACI instances after completing the testing to reduce ongoing costs**

#### Notes:
1. ACI can not be scale out according to docs(see screenshot from PtacticalTask3). Hmm....

Azure Container App


### Practical Task 4: Secure a Docker Container in ACI with Managed Identity via Azure Portal
#### Requirements:
1. **Deploy a Docker container to Azure Container Instances using the existing lightweight ACI**
**setup from previous tasks.**
2. **Configure a Managed Identity for the ACI and securely access an Azure service (e.g., Azure**
**Key Vault) with minimal permissions and access scope.**
3. **Retrieve only a single secret from Azure Key Vault for testing purposes.**
4. **Remove the ACI container after verifying secure access.**

#### Notes
1. Create Endpoint for keyvault 
2. Enable connection from my IP
3. Set Key Vault Crypto User role
4. Update a Dockerfile to install AZURE CLI to access the key vault


DONE!

### Practical Task 5: Deploy a Kubernetes Cluster with AKS via Azure Portal
#### Requirements:
1. **Create an Azure Kubernetes Service (AKS) cluster with the smallest VM size (e.g., B2s) and**
**the minimum number of nodes (e.g., 1–2).**
2. **Connect to the AKS cluster using Azure Cloud Shell with kubectl.**
3. **Deploy a lightweight Nginx application for verification.**
4. **Delete the AKS cluster immediately after testing to avoid additional VM and cluster costs.**


Done!

### Practical Task 6: Deploy a Containerized Application on AKS
#### Requirements:
1. **Build a lightweight Docker image for a simple web application (e.g., a Node.js app with**
**minimal dependencies) and push it to Azure Container Registry (ACR).**
2. **Reuse the AKS cluster from Task 5 to deploy the application using a Kubernetes deployment**
**and service manifest file.**
3. **Test the application for a limited time and remove the deployment afterward.**

Done!