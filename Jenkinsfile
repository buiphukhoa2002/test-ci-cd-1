pipeline {
    agent any
    stages {
        stage('Restart Container') {
            steps {
                withCredentials([
                    sshUserPrivateKey(credentialsId: 'SSH_KEY', keyFileVariable: 'KEY', usernameVariable: 'SSH_USER'),
                    string(credentialsId: 'VPS_HOST', variable: 'VPS_HOST')
                ]) {
                    sh '''
                        chmod 600 "$KEY"
                        ssh -vvv -o StrictHostKeyChecking=no -i "$KEY" "$SSH_USER"@"$VPS_HOST" echo "Connection OK"
                    '''
                }
            }
        }
    }
}