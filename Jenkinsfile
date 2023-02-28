pipeline {
    agent any
    stages {
        stage('TF-INIT') {
            steps {
                sh 'terraform init'
            }
        }
        stage('TF-VALIDATE') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('TF-FMT') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('TF-PLAN') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('TF-APPLY') {
            steps {
                sh 'terraform destroyed -auto-approve'
            }
        }
    }
    post {
        always {
            echo "### CLEARNING WORKSPACE ###"
            cleanWs()
            // echo "### SENDING PIPELINE STATUS TO MS TEAMS ###"
            // office365ConnectorSend webhookUrl: "${MS_Teams_URL}",
            // message: ""
        }
    }
}


















// pipeline {
//     agent any
//      environment {
//          MS_Teams_URL = credentials('ms_teams_url-shs-ue1-sct-001')
//      }

// pipeline {
//     agent any
//      environment {
//          MS_Teams_URL = credentials('ms_teams_url-shs-ue1-sct-001')
//      }