Practical Task 1: Create and Initialize a New Repository with a README
PreRequirements:
We have created a Terraform pipeline that requires a remote state on a storage account—this
might be useful for you.
Please complete the following steps:
1. Create a virtual machine (Linux).
2. Set up a storage account for the state.
3. Install a self-hosted agent (Linux).
pool:
 name: MyLinux
 demands:
 - agent.name -equals myAgent
4. Review the pull request I created with the pipeline.
5. Merge it and update the Agent name and variable group.
6. Ensure the pipeline runs successfully.
Requirements:
• Log in to your Azure DevOps account and navigate to your project.
• Create a new Git repository named MyEnhancedRepo.
• Clone the repository to your local machine using Git.
• Initialize the repository with a README file directly in Azure DevOps, specifying the purpose
of the repository.
• Clone the repository to your local machine and verify that the README.md file exists and
contains the correct informationi.


Questions:
1. How to create a new/one more repo in Azure Devops project?


Done


Practical Task 2: Implement Branching and Merging
Requirements:
• Create a new branch named feature-enhancement from the main branch in your local
repository.
• Add a new file named FEATURES.md to the feature-enhancement branch, detailing
potential features for the project.
• Commit the changes and push the feature-enhancement branch to the remote repository
in Azure Repos.
• Create a pull request from feature-enhancement to main, including a description of the
changes and why they are necessary.
• Review the pull request and merge it into the main branch after resolving any conflicts that
may arise.

Done
