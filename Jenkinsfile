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
	}
}