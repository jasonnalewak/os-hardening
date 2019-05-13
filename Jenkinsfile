pipeline {
    agent { label "master"}

    stages {
        stage('Delete the workspace') {
            steps {
                sh 'pwd'
                sh 'ls -la'
                sh "sudo rm -rf $WORKSPACE/*"
            }
        }

        stage('Loading Hardening Cookbook') {
            steps {
                git credentialsId: 'repo_key', url: 'git@github.com:jasonnalewak/os-hardening.git'
            }
        }

        stage('Local Testing') {
            steps {
                script {
                    sh 'cookstyle .'
                    sh 'foodcritic . --tags ~FC070,FC078'
                }
            }
        }

        stage('Test Kitchen') {
            steps {
                script {
                    sh 'sudo kitchen test'
                }
            }
        }

        stage('Upload Cookbook to S3') {
            steps {

            }
        }

        stage('Create AMI') {
            steps {

            }
        }

        stage('Validate AMI') {
            steps {
                
            }
        }

        stage('Send Slack Notification') {
            steps{
                slackSend color: '#449FE0', message: "Jason Nalewak: Please approve ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.JOB_URL}|Open>)"
            }
            
        }

        stage('Wait for Input'){
            steps{
                input 'Proceed with build?'
            }
        } 
    }

    //post actions
    post {
        success {
        slackSend color: '#439FE0', message: "Build $JOB_NAME $BUILD_NUMBER was successful"
        }
        failure {
            echo "Build Failed"
            slackSend color: 'bad', message: "Build $JOB_NAME $BUILD_NUMBER failed"
        }
    }

}