## Codepipeline POC

This repo is for the CodePipeline POC utilizing GitHub as Source, AWS CodeBuild for building, S3 for artifact store, and AWS CodeDeploy for automated deployment.

### Order of recreation

1. Create an S3 bucket (codepipeline-poc-s3)
2. Create an IAM role (codepipeline-poc-ec2-role)(AWSSSMManagedInstanceCore, AWSS3FullAccess, AWSCodeDeployRole)
3. Create an EC2 instance using that IAM role. 
4. Create a `/var/www/nextjs-app` dir and `ubuntu:ubuntu` `user:group` owner
5. Create an IAM role (codepipeline-poc-codedeploy-role) attach (AWSCodeDeployRole)
6. Create a CodeDeploy application (codepipeline-poc-codedeploy-application) and deployment group (codepipeline-poc-codedeploy-group)
7. Choose Amazon EC2 instances and filter the instances by tag (Name:codepipeline-poc)
8. Create a GitHub connection (make-connection)
9. Create a CodeBuild project (codepipeline-poc-codebuild) and store the artifact to S3 earlier. Choose `New service role` (codepipeline-poc-codebuild-role)
10. Create the CodePipeline. Custom pipeline. Choose `New service role` (codepipeline-poc-role). (Superseded, Custom location for S3). Login using GitHub App. CodePipeline default for output artifact. Enable webhook events. 
11. Modify the IAM role for codepipeline-poc-role, attach AmazonS3FullAccess, AWSCodeBuildDeveloperAccess, AWSCodeDeployDeployerAccess
12. Modify the IAM role for codepipeline-poc-codebuild-role, attach AmazonS3FullAccess, 

### Issues

- It's hard to set IAM roles for these services