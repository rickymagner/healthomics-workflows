# ultimagenomics-healthomics-workflows
UltimaGenomics repository for workflows compatible with AWS HealthOmics

## Introduction
i. UltimaGenomics offers our pipelines as Ready2Run workflows on AWS HealthOmics. Ready2Run workflows enable you to run these pipelines on AWS HealthOmics by simply bringing your data.

ii. For more flexibility or to modify the workflow, you can convert the Ready2Run workflow to a private workflow that can be run on AWS HealthOmics.

iii. The cost to run the workflow will now be based on the compute and run storage used during the private workflow run instead of a fixed price.

iv. For more questions about this workflow, please contact healthomics.support@ultimagen.com.

## To convert the Ultima Genomics DeepVarinat Ready2Run workflow to a private workflow in AWS HealthOmics, follow the steps below:
i. Pre requisites: 
1. Add in any information that the user will need to know prior to creating a workflow in AWS HealthOmics. #todo????
2. Pull and push the Ultima Genomics DeepVarinat public containers to your private ECR by following the steps here:

    a. Grant AWS HealthOmics permission to access your private ECR by following the instructions [here](https://docs.aws.amazon.com/omics/latest/dev/permissions-resource.html#permissions-resource-ecr).
   
4. Import your input files into a S3 bucket.
5. Create an OmicsService role to access your resources by following the instructions [here](https://docs.aws.amazon.com/omics/latest/dev/setting-up-workflows.html).

ii. Download the workflow folder as a zipped file. You can save this zipped file locally or in a S3 bucket. 

iii. Download the parameter template file. You can save this zipped file locally or in a S3 bucket.

iv. Modify and save the workflow scripts and parameter templates to meet your needs.

v. Create a private workflow in HealthOmics by following one of the two options below:
1. From the CLI:
 ~~~
$ aws omics create-workflow \
--name <workflow_name> \
--main r2r_efficient_dv.wdl \
--definition-zip <s3_uri_for_zipped_file> \
--parameter-template <s3_uri_for_parameter_template_file> \
--accelerators <if_using_GPU_enter_GPU>
 ~~~
2. From the console:
    
    a. Click on **Private Workflows** from the left pane.
    
    b. Click on **Create Workflow** on the Workflows list.
    
    c. Follow the instructions on the console to create your workflow.

vi. Run your workflow by following one of the two options below:
1. From the CLI:
 ~~~
$ aws omics start-run \
--workflow-id <workflow_id> \
--role-arn <service_role_arn> \
 --name <run_name> \
 --retention-mode REMOVE
 ~~~
2. From the console:
   
   a. Click **Private Workflows** from the left pane.

   b. Click the **Workflow ID** from the Workflows list.

   c. Click **Create Run** and enter the run information.
