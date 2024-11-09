# README
**﻿Thid Document contains step for Deployment**

Please follow the steps on how to use the code and deployment - 
1. Any of the code pushed to main repository will trigger the pipeline acr-deploy.yml
2. Main function of the pipeline is to build docker image and push to ACR .
3. It contains 2 parts first it will build docker image , then it will pull and deploy to k8s cluster.
4. If you want to make any infra changes then please push the code to terraform folder , it will trigger create-infra.yml pipeline.
5. For the monitoring purpose grafana is deployed at this IP -** http://4.159.26.3/alerting/notifications?search=**

   Currently the application is deployed at this IP - 85.210.200.229
