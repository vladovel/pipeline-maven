pipeline {
    agent any

    stages {

        stage("AllStage") {

            steps {
                sh '''
                echo "**********************************"
                echo "***   Building JAR   *************"
		WORKSPACE=/home/jenkins/jenkins_data/jenkins_home/workspace/pipeline-docker-maven
 		echo "***   Building Docker Image   ****"
		docker run --rm -i -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn -B -DskipTests clean package
		echo "**********************************"
		echo "**** Copying FAT JAR *************"
		echo "**********************************"
		cp -f java-app/target/*.jar jenkins/build/
		echo "****************************"
		echo "** Buuilding Docker Image **"
		echo "****************************"
		docker-compose -f jenkins/build/docker-compose-build.yml build --no-cache
		echo "**********************************"
		echo "***   Testing JAR   *************"		
		WORKSPACE=/home/jenkins/jenkins_data/jenkins_home/workspace/pipeline-docker-maven
		docker run --rm -i -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn test
		echo maven-project > /tmp/.auth
		echo 10 >> /tmp/.auth
		echo sd8tr8mr-hs-== >> /tmp/.auth
		scp /tmp/.auth docker_user@192.168.1.206:/tmp/.auth
		scp ./jenkins/deploy/publish.sh docker_user@192.168.1.206:/tmp/publish.sh
		ssh docker_user@192.168.1.206 "/tmp/publish.sh"
                '''
            }
        }
    }
}
