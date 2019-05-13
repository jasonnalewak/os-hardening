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
            steps{
                script {

                }
            }
        }

        stage('Create AMI') {
            steps{
                script {
                    
                }
            }
        }

        stage('Validate AMI') {
            steps{
                script {
                    
                }
            }
        }

/*         stage('Upload Cookbook to S3') {
            steps {
                withCredentials([ usernamePassword(credentialsId: '', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY') ]) {
                    s3Upload acl: 'PublicRead', bucket: 'jnalewak-packer-images', cacheControl: '', excludePathPattern: '', file: 'test.txt', includePathPattern: '', metadatas: [''], redirectLocation: '', sseAlgorithm: '', text: '', workingDir: ''
                }
            }
        } */

/*         stage('Create Packer AMI') {
        steps {
          withCredentials([
            usernamePassword(credentialsId: '', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY')
          ]) {
            sh 'packer build -var aws_access_key=${AWS_KEY} -var aws_secret_key=${AWS_SECRET} packer/packer.json'
        }
      }
    } */

    //NEEDS WORK ON THE TF STATE HANDLING
/*     stage('AWS Deployment') {
      steps {
          withCredentials([
            usernamePassword(credentialsId: 'jnalewak-success-aws', passwordVariable: 'AWS_SECRET', usernameVariable: 'AWS_KEY'),
            usernamePassword(credentialsId: 'repo_key', passwordVariable: 'REPO_PASS', usernameVariable: 'REPO_USER'),
          ]) {
            //clear the workspace
            sh 'rm -rf node-app-terraform'
            //pull down the terraform state repo
            sh 'git clone https://github.com/jasonnalewak/os-hardening'
            sh '''
               cd terraform/aws
               terraform init
               terraform apply -auto-approve -var access_key=${AWS_KEY} -var secret_key=${AWS_SECRET}
               git add terraform.tfstate
               git -c user.name="Jason Nalewak" -c user.email="jnalewak@chef.io" commit -m "terraform state update from Jenkins"
               git push https://${repo_key}:${repo_pass}@github.com/jasonnalewak/pipeline-tf-state.git master
            '''
        }
      }
    }
  } */

/*          stage('Loading the Web App Hab Package') {
            steps {
                script{
                    sh 'export HAB_LICENSE=accept-no-persist'
                    sh 'sudo hab sup run &'
                    sh 'sudo hab svc load jnalewak-hab-pub/mongodb-parks'
                    sh 'sudo hab svc load jnalewak-hab-pub/national-parks --bind database:mongodb-parks.default'
                }
            }
        } */

        stage('Send Slack Notification') {
            steps{
                slackSend color: '#449FE0', message: "Jason Nalewak: Please approve ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.JOB_URL}|Open>)"
            }
            
        }

        stage('Wait for Input'){
            steps{
                input 'Proceed with build?'
            }
        } */
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