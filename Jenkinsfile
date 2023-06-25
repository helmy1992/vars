@Library('my-library') _  
pipeline {
     agent any
    parameters {
        booleanParam(name:'test', defaultValue: true, description:'this paramater help you to know project name')
        choice(name: 'namespace', choices:['dev','prod','stage'], description: '' ) 
    }

    stages {
        stage('build') {
            steps {
                building()
            }
        }

        stage('test') {
            when {
                expression{
                    params.test== true 
                }
            }
            steps {
                testing()
            }
        }
        
        stage('deploy') {  
            steps {
               deploying()
            }
        }    
    }

     post {
        always { 
            echo 'job was triggered'
        }
        success {
            echo 'your app is deployed successfully'
        }
        failure {
            echo 'dyploying failure'
        }

}
}
