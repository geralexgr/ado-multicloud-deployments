# ado-multicloud-deployments
Multi cloud deployment demo using Azure DevOps


![Architecture](/resources/architecture.png)


## multi-cloud-deployment.yml

The deployment is triggered everytime a new commit is made in the `main` branch. The cloud deployments are seperated in different stages. This comes with some advanced features like retries and also `continueOnError` which can be used in the `stage` level and continue with the deployment on the second provider althrough the first one failed.


## Terraform

When the pipeline runs you will notice that terraform will start creating resources on both cloud providers.

### Azure

![Azure](/resources/terraform-azure.png)

### AWS  

![AWS](/resources/terraform-aws.png)

## Infrastructure

Finally when we check the infrastructure component that we have created we can locate the code that we pushed through terraform on the serverless application. Code can be the same if you do not use cloud-specific libraries.

### Azure

![Azure](/resources/azure-function.png)

### AWS  

![AWS](/resources/lambda-function.png)




## Improvements

The current setup does not include a state file. This means that you do not have a source of truth for your deployment and everytime you need to deploy all the components. A state file should be included in both cloud providers.
