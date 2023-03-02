pipeline {
    agent any
    stages {
        stage('TF-INIT') {
            steps {
                dir("/test/test1") {                       
                sh 'terraform init'
            }
        }
    }
        stage('TF-VALIDATE') {
            steps {
                dir("/test/test1") {
                sh 'terraform validate'
            }
        }
    }
        stage('TF-FMT') {
            steps {
                dir("/test/test1") {
                sh 'terraform fmt'
            }
        }
    }
        stage('TF-PLAN') {
            steps {
                dir("/test/test1") {
                sh 'terraform plan'
            }
        }
    }
        // stage('TF-APPLY') {
        //     steps {
        //         sh 'terraform destroy -auto-approve'
        //     }
        // }
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