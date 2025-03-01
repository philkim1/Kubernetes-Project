### Elements of the Coworking Space Service 

The Cowokring Space Service utilizes AWS Codebuild, Elastic Kubernetes Service, Cloudwatch, and Elastic Container Registry. The basic steps are to build a docker image, store the docker image, deploy the docker image and monitor the activity of the deployment.

The following items are used to deploy the service.
1. app2.py is the python code for the coworking analytics application that will be run in a pod in the kubernetes cluster
2. buildspec.yaml is used by AWS Codebuild for the build steps to build/create the docker image that will be stored in the Elastic Container Registry. The source of the buildspec.yaml file is my github repo, which is linked to my AWS Codebuild project.
3. config.py file is referenced by the app.py file to get the environment variables.
4. requirements_new.txt is used by dockerfile to install the appropriate dependencies in the docker image.
5. dockerfile is the file used by AWS Codebuild to build the docker image, which the source is my github repo
6. ConfigMap.yaml is the file to be loaded into kubernetes with the environment variables that the service needs to access the database
7. Secret.yaml is the file to be loaded into kubernetes with the password to the database
8. deployment.yaml is the file to deploy the docker image stored in the elastic container service to a pod
9. service.yaml is the file to create the service which will facilitate communication to the deployed pod

By altering/updating these files changes to the deployment of the Coworking Space Service could be achieved. However with any change the basic steps would have to be repeated: build, store, deploy and monitor.

