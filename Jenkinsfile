def gv
pipeline {
    agent any

    stages {
        
        stage("init") {
            steps {
                script {
                   gv = load "script.groovy" 
                }
            }
        }
        
        stage("build") {
            steps {
                sh 'echo "Hello World"'
            }
        }
        
        stage("test") {
            steps {
                sh 'echo "Hello World"'
            }
        }
        
        stage("deploy") {
            steps {
                sh 'echo "Hello World"'
            }
        }
    }   
}
