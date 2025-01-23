# Pipeline_Setup

# CodePipeline_Test Deployment with AWS CodePipeline
This repository contains the files and configurations required to deploy the CodePipeline_Test application using AWS services such as CodePipeline, CodeBuild, and CodeDeploy.
# Overview

# Purpose
The CodePipeline_Test deployment pipeline automates the process of:
1.	Fetching the latest source code from GitHub.
2.	Building and packaging the application using CodeBuild.
3.	Deploying the application on an EC2 instance with CodeDeploy.

# Components
•	appspec.yml --> Manages deployment configuration and hooks with CodeDeploy.

•	buildspec.yml --> Defines build tasks and artifact packaging for CodeBuild.

•	after_install.sh --> A post-deployment script to clean and move files.

# Prerequisites
Before using this project, ensure the following:
1.	An AWS account is properly configured.
2.	EC2 instances have the CodeDeploy agent installed and running.
3.	An IAM role exists with permissions for CodePipeline, CodeBuild, and CodeDeploy.
4.	A GitHub repository is connected to CodePipeline.

# Setup Instructions
1. Clone the Repository
bash
CopyEdit
git clone https://github.com/<your-username>/codepipeline_test.git
cd codepipeline_test

3. Configure AWS Resources
•	Create a new CodePipeline pipeline in AWS Management Console.
•	Set up the following stages:
Source Stage: Connect to the GitHub repository.
Build Stage: Use CodeBuild and specify the buildspec.yml file.
Deploy Stage: Use CodeDeploy with the appspec.yml file.

5. Test the Deployment
Make a commit to trigger the pipeline:
bash
CopyEdit
git commit -m "Testing deployment pipeline"
git push origin main

# File Descriptions
•	appspec.yml --> Defines CodeDeploy configuration and specifies the after_install.sh script to execute post-deployment tasks.

•	buildspec.yml --> Specifies CodeBuild tasks, such as installing dependencies, building the application, and packaging artifacts.

•	after_install.sh --> A bash script that:
1.	Removes unnecessary files.
2.	Copies updated files to the application directory.
3.	Cleans the deployment stage directory.
   
# Troubleshooting
•	Build Failure: Check the CodeBuild logs for errors in the buildspec.yml configuration.
•	Deployment Issues: Ensure the EC2 instance has the CodeDeploy agent running and accessible.

# License
This project is licensed under the MIT License. Feel free to modify and adapt it for your use.
