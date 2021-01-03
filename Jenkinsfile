pipeline {
    agent {
    docker {
        image 'openjdk:11'
    }
}
    
    stages {
		stage ("build") {
        	steps {
            	sh './gradlew clean build'
            }
        }
    }
}