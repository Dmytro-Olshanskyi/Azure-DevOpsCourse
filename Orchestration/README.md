### Practical Task 1: Deploy a Docker Container to Azure Container Instances (ACI) via Azure
### Portal
####Requirements:
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