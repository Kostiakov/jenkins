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
				sh 'docker build -t jenkins-demo .'
			}
		}
		
		stage ("deploy") {
			steps {
				sh 'docker run -p 8081:8081 jenkins-demo'
			}
		}
	}
}