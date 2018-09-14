node {
   def NODEJS_HOME = tool "NODE_PATH"
   env.PATH="${env.PATH}:${NODEJS_HOME}/bin"
   sh 'npm --version'
   
   stage("Checkout Source"){
       checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url:'https://github.com/akilans/openshift-react-frontend.git']]])
   }
   
   stage("Install Dependencies"){
         sh 'npm install'
   }
   
   stage("Code Quality"){
         sh 'npm run lint'
         publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: '', reportFiles: 'quality.html', reportName: 'Quality Report', reportTitles: ''])
   }
   
   stage("Unit Test"){
         sh 'npm run test -- --coverage'
         publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'coverage/lcov-report', reportFiles: 'index.html', reportName: 'Coverage Report', reportTitles: ''])
   }

   stage("Dev - Building Application"){
        openshiftBuild(buildConfig: 'react-frontend-app',showBuildLogs: 'true')
   }

   stage("Dev - Deploying Application"){
       openshiftDeploy(deploymentConfig: 'react-frontend-app')
   }
   /*
   stage('Deploy to Production approval'){
      input "Deploy to prod?"
   }
   
   stage("Prod - Building Application"){
        openshiftBuild(namespace:'prod-coe-mern-stack', buildConfig: 'react-frontend-app',showBuildLogs: 'true')
   }

   stage("Prod - Deploying Application"){
       openshiftDeploy(namespace:'prod-coe-mern-stack', deploymentConfig: 'react-frontend-app')
   }
   */
   
   
}
