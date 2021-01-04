pipeline {
    agent any
    
    stages {
		stage ("build") {
			steps {
				sh './gradlew clean build'
			}
		}
		
		stage ("stage") {
			steps {
				sh 'docker stop jenkins-demo || true && docker rm jenkins-demo || true'
				sh 'docker build -t jenkins-demo .'
			}
		}
		
		stage ("deploy") {
			steps {
				sh 'docker run -d -p 8081:8081 jenkins-demo'
			}
		}
	}
}