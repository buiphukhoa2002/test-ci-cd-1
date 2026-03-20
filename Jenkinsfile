pipeline {
    agent any
    stages {
        stage('Restart Container') {
            steps {
                withCredentials([
                    sshUserPrivateKey(credentialsId: 'SSH_KEY', keyFileVariable: 'KEY', usernameVariable: 'SSH_USER'),
                    string(credentialsId: 'VPS_HOST', variable: 'VPS_HOST')
                ]) {
                    sshagent(credentials: ['SSH_KEY']) {
                        sh '''
                            ssh -o StrictHostKeyChecking=no "$SSH_USER"@"$VPS_HOST" '
                                cd /root/test-ci-cd-1 &&
                                git pull &&
                                docker-compose down &&
                                docker-compose build &&
                                docker-compose up -d
                            '
                        '''
                    }
                }
            }
        }
    }
}