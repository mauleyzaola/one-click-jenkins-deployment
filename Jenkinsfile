pipeline {
    agent any
    stages {
        stage("dummy-thing") {
            steps {
                sh '''
                go version
                '''
            }
        }
    }


    post {

        always {
            cleanWs(cleanWhenNotBuilt: false,
                    deleteDirs: true,
                    disableDeferredWipeout: false,
                    notFailBuild: true,
                    patterns: [[pattern: '.gitignore', type: 'INCLUDE'],
                               [pattern: '.propsfile', type: 'EXCLUDE']])
        }
    }
}