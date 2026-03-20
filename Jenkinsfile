pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                withCredentials([
                    usernamePassword(credentialsId:'user_pass_id1', usernameVariable:'USER', passwordVariable:'PASS'),
                    string(credentialsId:'secret_id1', variable: 'VARS')
                ]) {
                    echo " ${USER} -- ${PASS} -- ${VARS} "
                }
            }
        }
    }
}