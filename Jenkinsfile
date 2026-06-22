pipeline {
    agent any
    tools{
        // jdk "myjava"
        maven "mymaven"
    }
    stages {
        stage('compile') {
            agent any
            steps {
                echo "compile the code"
                sh "mvn compile"
            }
        }
        stage('Unittest') {
            agent any
            steps {
                echo "Test the code"
                sh "mvn test"
            }
        }
        stage('package') {
            agent any
            steps {
                echo "Package the code"
                sh "mvn package"
            }
        }
    }
}
