# Steps to configure in Openshift

    * Install jenkins with NodeJS/HTML publisher plugin
    * Configure Global tool for NODE_PATH environment variable


    * Add the below access if jenkins service is in diffrent project
    * oc policy add-role-to-user edit system:serviceaccount:coe-openshift:jenkins -n coe-mern-project

    * Create a Pipeline for the project
    * oc new-app https://github.com/akilans/openshift-react-frontend.git  --strategy=pipeline --env REACT_APP_API_URL=http://node-backend-app:8080/api --name=react-frontend-pipeline

    * oc new-app https://github.com/akilans/openshift-react-frontend.git  --strategy=docker --env REACT_APP_API_URL=http://node-backend-app:8080/api --name=react-frontend-app



