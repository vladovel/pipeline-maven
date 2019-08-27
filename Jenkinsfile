pipeline {
    agent any
    
    stages {
        
        stage("AllStage") {

            steps {
                sh '''
                    echo build ...
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
                    echo test ...
                    ./jenkins/test/mvh.sh mvn test
                    echo push ...
                    ./jenkins/push/push.sh
                    echo deploy ...
                    ./jenkins/deploy/deploy.sh
                '''
            }
        }
    }
}
