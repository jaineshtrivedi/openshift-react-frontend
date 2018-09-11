# Steps to configure in Openshift

    * Create a Pipeline for the project. It automatically lauches jenkins container

    * oc new-app https://github.com/akilans/openshift-react-frontend.git  --strategy=pipeline --env REACT_APP_API_URL=$BACKEND_API_URL --name=react-frontend-pipeline

    * oc new-app https://github.com/akilans/openshift-react-frontend.git  --strategy=docker --env REACT_APP_API_URL=$BACKEND_API_URL --name=react-frontend-app

    * oc expose svc react-frontend-app

    * Change the project to "prod-coe-mern-stack"
    * oc new-app https://github.com/akilans/openshift-react-frontend.git  --strategy=docker --env REACT_APP_API_URL=$BACKEND_API_URL --name=react-frontend-app

    * oc expose svc react-frontend-app




