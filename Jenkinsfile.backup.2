pipeline {
    agent {
        label 'master'
    } 
    
    stages {
        
        stage("Build") {
            agent {
                label 'master'
            }

            steps {
                sh '''
                    echo build ...
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
                '''
            }
        }
        
        stage("Test") {
            agent {
                label 'master'
            }
            steps {
                sh '''
                    echo test ...
                    ./jenkins/test/mvh.sh mvn test
                '''
            }
        }
        
        stage("Push") {
            steps {
                sh '''
                    echo push ...
                    ./jenkins/push/push.sh
                '''
            }
        }
        
        stage("Deploy") {
            steps {
                sh '''
                    echo deploy ...
                    ./jenkins/deploy/deploy.sh
                '''
            }
        }
    }
}
