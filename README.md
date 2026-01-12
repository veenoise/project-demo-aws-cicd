## Codepipeline POC

This repo is for the CodePipeline POC utilizing GitHub as Source, AWS CodeBuild for building, S3 for artifact store, and AWS CodeDeploy for automated deployment.

### Order of recreation

1. Create an S3 bucket (codepipeline-poc-s3)
2. Create an IAM role (AWSSSMManagedInstanceCore, AWSS3FullAccess, AWSCodeDeployRole)
3. Create an EC2 instance using that IAM role. 
4. Create a `/var/www/nextjs-app` dir and `ubuntu:ubuntu` `user:group` owner
5. Create a CodeDeploy application and deployment group
6. Create a CodeBuild and store the artifact to S3
7. Create the CodePipeline using GitHub as source, CodeBuild for the build stage, and CodeDeploy for the deploy stage.

### Issues

- CodePipeline doesn't accept GitHub classic token, you need to use GitHub OAuth or the GitHub app to login.
