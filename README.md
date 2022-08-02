# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository

2. Create your infrastructure as code

3. Deploy it with Packer and Terraform frameworks by using the CLI.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)
5. Ensure you have registered a new app in App registration of your Azure subscription under the Azure Active Directory. Get its:
    - client_id,
    - Client_secret and
    - subscription_id as environment variables.

### Instructions
**Your words here**
## Using the terminal
1. Log in to your azure account with:
``` az login ```
2. Create a new policy and assign it, you can use a similar script to:
```
{
    "if": {
      "allof": [
        {
          "field": "tags",
          "exists": "false"
        }
      ]
    },
    "then": {
      "effect": "deny"
    }
  }

  az policy definition create --name <policyname> --rules <filename>
  az policy assignment create --policy <policyname>
```
3. create an image with packer from the server.json file using:
``` packer build ```

4. Initialize terraform, plan out to new file and apply:
```
  terraform init

  terraform plan -out "solution.plan"

  terraform apply "solution.plan"  
```

### Output
**Your words here**

#### Confirm resources creation using:
``` terraform show ```
    - or log into azure portal and check created resources

### GoodLuck
