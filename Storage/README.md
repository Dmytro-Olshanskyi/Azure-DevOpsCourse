### Practical Task 1: Upload and Retrieve Files with Azure Blob Storage
#### Use Azure Blob Storage for storing and retrieving files.
#### Requirements:
1. ***Create a new storage account in Azure.**
2. **Set up a Blob container named "my-container" with public access.**
3. **Upload a sample text file to the Blob container using the Azure portal.**
4. **Download the uploaded file to verify successful retrieval.**
5. **Use Azure Storage Explorer to manage and view blobs in your container.**

Done

### Practical Task 2: Lifecycle Management for Blob Storage
#### Implement lifecycle management policies to optimize storage costs.
#### Requirements:
1. **Create a storage account and a Blob container named "lifecycle-container."**
2. **Upload multiple files of varying sizes to the container.**
3. **Create a lifecycle management policy to move blobs to the Cool tier after 30 days and**
**delete blobs older than 90 days.**
4. **Simulate policy execution by manually testing with different file creation timestamps.**
5. **Verify that blobs are moved or deleted according to the policy.**

#### Note:
1.How to change a file creation date except to download a the file one more time?

### Practical Task 3: Implementing an Azure Queue for Message Storage
#### Create and manage an Azure Queue to store and process messages.
#### Requirements:
1. **Create a storage account and enable the Queue service.**
2. **Create a queue named "task-queue."**
3. **Use Azure Storage Explorer or the Azure portal to add messages to the queue.**
4. **Retrieve and process messages directly using Azure Storage Explorer or the Azure portal**
**interface.**
5. **Verify that processed messages are removed from the queue manually**

#### Notes:
https://www.youtube.com/watch?v=TzGLRUcdBes&t=3s

How to Retrieve and process messages ? Can do this using some SDK.
Dequeue messages - receive and delete
https://learn.microsoft.com/en-us/azure/storage/queues/storage-tutorial-queues?toc=%2Fazure%2Fstorage%2Fqueues%2Ftoc.json

### Practical Task 4: Configuring Azure File Share and Mounting on a Local Machine
##### Set up and access Azure File Storage for shared file access.
##### Requirements:
1. **Create a storage account and set up an Azure File Share.**
2. **Upload a file to the file share using the Azure portal.**
3. **Generate a connection script for Windows or Linux and use it to mount the file share on your**
**local machine.**
4. **Verify the mounted file share and ensure it displays the uploaded file.**
5. **Add another file to the file share from the local machine and confirm it reflects in Azure.** 

Done

### Practical Task 5: Storing and Querying Data with Azure Table Storage
#### Set up and use Azure Table Storage for structured data.
#### Requirements:
1. **Create a storage account and enable the Table service.**
2. **Create a table named "employee-data".**
3. **Add sample data (e.g., employee IDs, names, and roles) to the table using Azure Storage**
**Explorer or Azure CLI.**
4. **Query the table for specific data using filters (e.g., "Role = Developer").**
5. **Delete specific entries from the table and verify the changes.**

Done

### Practical Task 6: Configuring Shared Access Signatures (SAS) for Secure Access
#### Secure Azure Storage services using SAS tokens.
#### Requirements:
1. **Create a storage account with Blob, File, Queue, and Table services enabled.**
2. ****Generate a Shared Access Signature (SAS) token for Blob storage with limited permissions**
**(e.g., read-only access).**
3. **Share the SAS token URL and verify access to the Blob container with the token.**
4. **Repeat the process for File, Queue, and Table services with different permissions.**
5. **Analyze the security implications of SAS tokens and expiry times**

#### Question:
Access to a concrete file not to full container? - How to get access to a container?

### Practical Task 7: Implementing Security Best Practices with Azure RBAC and Managed
### Identities
#### Securely manage access to Azure resources and integrate services using Managed Identities.
#### Requirements:
1. **Configure Azure RBAC for a Storage Account:**
o Create a storage account named "secure-storage".
o Add a user or service principal with Storage Blob Data Contributor role.
o Verify that the user or service principal can upload and download blobs to the
account. - ?!!!
o Attempt access with an unauthorized user and verify access is denied.
2. **Set Up a Managed Identity for an Azure Virtual Machine:**
o Create an Azure Virtual Machine (VM) with a system-assigned Managed Identity
enabled.        
o Assign the Storage Blob Data Reader role to the Managed Identity for "securestorage".
o Connect to the VM and verify that the Managed Identity can access blob data using
Azure CLI or a pre-installed script.


#### Questions
1. How to perform task7 ?! :(


