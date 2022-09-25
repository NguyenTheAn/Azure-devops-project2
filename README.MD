# Overview

This is the project of Azure Devops Engineer Nanodegree Udacity. <br>
In this project, we will build a CI/CD pipeline using Github action and Azure Pipeline for a Python-base application

## Project Plan

* A link to a Trello board for the project:
    - [Trello link](https://trello.com/b/NhWIheUO/project-planning)
* A link to a spreadsheet that includes the original and final project plan> <br>
![Project planning](images/project_planning.png)

## Instructions

* Architectural Diagram (Shows how key parts of the system work)> <br>
![Architectural Diagram](images/diagram.png)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Clone project into Azure Cloud Shell
    - Open Azure Cloud Shell, create a SSH key pair by: `ssh-keygen -t rsa`;
    - Add public SSH key to your Github. If you don't know how to add, you can go throuh this [Add SSH key to Github Account](https://www.inmotionhosting.com/support/server/ssh/how-to-add-ssh-keys-to-your-github-account/) 
    - Clone source code to Azure Cloud Shell: ` git clone <your project link> `
![Clone project](images/clone.png)
* Project running on Azure App Service
    - Go to project directory and run `make setup`
    - Activate virtual env: `source ~/.udacity-devops/bin/activate`
    - Run `make all` command
![Result](images/make.png)
* Deploy project to web service using Azure Cloud Shell
    - Go to project directory and run `az webapp up --name <Your_unique_app_name> --resource-group Azuredevops --runtime "PYTHON:3.7"`
![Deploy to web service](images/deploy.png)
![Deploy to web service](images/web_running.png)

    - Update `<yourappname>` in file `make_predict_azure_app.sh`
    - Run the command `chmod u+x make_predict_azure_app.sh`
    - Run: `./make_predict_azure_app.sh`
![Prediction](images/predict.png)
* Setup Github Action:
![github action](images/github_action_build.png)

* Build CD using Azure Pipline
    - Create and SSH to VM:
![vm](images/create_vm.png)
![vm](images/ssh_toVM.png)
    - Follow this [link](https://praveenkumarsreeram.com/2021/04/14/azure-devops-configure-self-hosted-agent-for-azure-pipelines/) to create self-host agent:
![agent](images/agent.png)
    - Create service connection:
![Create service connection](images/1.png)
![Create service connection](images/2.png)
![Create service connection](images/3.png)
    - Create Pipline using template from [azure-pipelines.yml](../../../../azure-pipelines.yml)

* Running Azure App Service from Azure Pipelines automatic deployment
![Running Pipeline](images/pipeline.png)
![Running Pipeline](images/pipeline2.png)
![Running Pipeline](images/pipeline3.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:
![output](images/result.png)

* Output of streamed log files from deployed application
![output](images/streamlog.png)

> 

## Enhancements

* Deploy project using Docker or Kubernetes

## Demo 

<TODO: Add link Screencast on YouTube>


