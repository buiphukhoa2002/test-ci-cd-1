pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                withCredentials([
                    usernamePassword(credentialsId:'user_pass_id', usernameVariable:'USER', passwordVariable:'PASS'),
                    string(credentialsId:'secret_id', variable: 'VARS')
                ]) {
                    echo " ${USER} -- ${PASS} -- ${VARS} "
                }
            }
        }
    }
}