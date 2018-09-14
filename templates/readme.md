# Steps to run this templates

    * Login and Create projects for DEV_PROJECT_NAME & PROOD_PROJECT_NAME in openshift container platform

    # Enter into DEV_PROJECT_NAME and PROD_PROJECT_NAME and run the below steps

        * Run a mongodb template from openshift catalog [ MongoDB (Ephemeral) ] and provide credentials and edit "MongoDB Database Name" as "employee"

        * Click import YAML option and import "node-backend-app.yaml" template and provide mongodb URL with username and password

        * Click import YAML option and import "react-frontend-app.yaml" template and provide API URL with api - for example - http://node-backend-app-coe-test-template.apps.na39.openshift.opentlc.com/api

    # Enter into DEV_PROJECT_NAME

        * Create a Pipeline for the project by running the below oc command. It automatically lauches jenkins instance

        * oc new-app https://github.com/akilans/openshift-node-backend.git  --strategy=pipeline --name=node-backend-pipeline

        * Access jenkins url and install NodeJS plugin and HTML publisher plugin

        * oc policy add-role-to-user edit system:serviceaccount:${DEV_PROJECT_NAME}:jenkins -n ${PROD_PROJECT_NAME}


    

   
