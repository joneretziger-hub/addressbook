pipeline {
    agent any
    tools{
        // jdk "myjava"
        maven "mymaven"
    }
    stages {
        stage('compile') {
            steps {
                echo "compile the code"
                sh "mvn compile"
            }
        }
        stage('Unittest') {
            steps {
                echo "Test the code"
                sh "mvn test"
            }
        }
        stage('package') {
            steps {
                echo "Package the code"
                sh "mvn package"
            }
        }
    }
}
