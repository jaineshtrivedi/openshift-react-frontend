# Steps to run this templates

    * Login and Create two projects for DEV_PROJECT_NAME & PROOD_PROJECT_NAME in openshift container platform

    # Enter into DEV_PROJECT_NAME and run the below steps

        * Run a mongodb template from openshift catalog [ MongoDB (Ephemeral) ] and provide credentials and edit "MongoDB Database Name" as "employee"

        * Click import YAML option and import "react-node-app.yaml" template and provide Git Repo, mongodb URL with username and password

        * Change Jenkins Quota limitation so it will start. Install NodeJS & HTML publisher plugin

        * Replace REACT_APP_API_URL with DNS name of Node App route

    # Enter into PROD_PROJECT_NAME

        * oc policy add-role-to-user edit system:serviceaccount:${DEV_PROJECT_NAME}:jenkins -n ${PROD_PROJECT_NAME}

        * Run a mongodb template from openshift catalog [ MongoDB (Ephemeral) ] and provide credentials and edit "MongoDB Database Name" as "employee"

        * Click import YAML option and import "prod-react-node-app.yaml" template and provide Git Repo, mongodb URL with username and password
        
        * Edit Jenkins file to point it to the PROD_PROJECT_NAME
