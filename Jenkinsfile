def gv

pipeline {
    agent any

    stages {
        
        stage("init") {
            steps {
                script {
                   sh 'printenv'



                   echo "DEBUG env.GITHUB_PR_SOURCE_BRANCH ${env.GITHUB_PR_SOURCE_BRANCH}"



                   echo "DEBUG env.BRANCH_NAME ${env.BRANCH_NAME}"




                   def scmVars = checkout scm

                   def branchName = scmVars.GIT_BRANCH




                   echo "DEBUG scmVars $scmVars"

                   echo "DEBUG branchName $branchName"
                   gv = load "script.groovy" 
                   
                }
            }
        }
        
        stage("build") {
            steps {
                script {
                    gv.buildApp()
                }

            }
        }
        
        stage("test") {
            steps {
                script {
                    gv.testApp()
                }
            }
        }
        
        stage("deploy") {
            steps {
                script {
                    gv.deployApp() 
                }
            }
        }
    }   
}
