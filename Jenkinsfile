pipeline {
    agent any
    triggers{
        pollSCM '* * * * *'
    }
    tools{
        maven 'M2_HOME'
    }
    stages {
        stage('build'){
            steps {
            sh 'mvn clean'
            sh 'mvn install'
            sh 'mvn package'
                
            }
        }
    }  
    stage (deploy to tomcat) {
        steps {
            deploy adapters: [tomcat8(path: '', url: '')], contextPath: 'http://192.168.0.90:8080/', war: '**/*.war'

        }
    }  
}
