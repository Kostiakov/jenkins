pipeline {
    agent any
    
    stages {
		stage ("build") {
        	steps {
        		chmod +x gradlew
            	sh './gradlew clean build'
            }
        }
    }
}