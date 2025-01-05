# AZURE Identity and Access Management Practical tasks

### Practical Task 1: Introduction to Microsoft Entra ID
#### Create a basic Microsoft Entra ID setup for an organization to manage identity and access.
#### Requirements:
1. **Create a new Microsoft Entra ID tenant.**
2. **Add at least two users to the directory.**
3. **Create two groups named Developers and Admins.**
4. **Assign the users to appropriate groups.**
5. **Assign the Global Reader role to the Admins group.**
6. **Assign the Application Developer role to the Developers group.**
7. **Verify that the role assignments function as expected for both groups.**

#### Issues:
1. **There is no possibilities to create Microsoft Entra ID tenant under Pay-As-You-Go subscription.**
2. **Add Global Reader permission to the user only. There is no possibility to assign a role.**


#### Questions:
1. **Is it possible to assign permissions to a group?**

### Practical Task 2: Enabling Single Sign-On (SSO) and Multi-Factor Authentication (MFA)
#### Configure Single Sign-On (SSO) and Multi-Factor Authentication (MFA) for users in a Microsoft Entra ID
#### directory to enhance identity and access security.
#### Requirements:
1. **Enable Single Sign-On (SSO) for your Microsoft Entra ID tenant.** - Error
2. **Enforce Multi-Factor Authentication (MFA) for all users in the directory.**
3. **Configure conditional access policies to require MFA for high-risk sign-ins.** - Need P1/P2
4. **Verify that SSO and MFA settings are correctly applied for the users.**

#### Issues:
1. **Error during registration on https://samltoolkit.azurewebsites.net/Account/Register
2. **Create your own policies and target specific conditions like cloud apps, sign-in risk, and device platforms with Microsoft Entra ID Premium.**

#### Questions:

#### Notes:
Use https://learn.microsoft.com/en-us/entra/identity/saas-apps/saml-toolkit-tutorial


### Practical Task 3: Implementing Role-Based Access Control (RBAC)
#### Implement Role-Based Access Control (RBAC) in Azure to manage access to resources based on roles and
#### ensure fine-grained access management.
####Requirements:
1. **Create a custom role named Resource Viewer with read-only permissions for a specific resource
group.**
2. **Assign the Resource Viewer role to the Developers group created earlier.**
3. **Assign the built-in Contributor role to the Admins group for the same resource group.**
4. **Verify that members of the Developers group have only read access and members of the Admins
roup have full access to the resource group.**


### Practical Task 4: Securing Sensitive Information with Azure Key Vault
#### Set up Azure Key Vault to securely store and manage sensitive information such as keys, secrets, and
### #certificates.
#### Requirements:
1. **Create a new Azure Key Vault in your subscription.**
2. **Add a secret to the Key Vault (e.g., a database connection string).**
3. **Set access policies to grant the Application Developer role (assigned to the Developers group)**
**permission to retrieve secrets from the Key Vault.**
4. **Verify that only members of the Developers group can access the stored secret**


#### Notes: 
How to video:
https://www.youtube.com/watch?v=Mgaoz8gFy_I

Pricing:
https://azure.microsoft.com/en-us/pricing/details/key-vault/

Wait for a access.


Task5
Task6
