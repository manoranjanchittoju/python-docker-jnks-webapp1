pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Retrieves code from the Git repository using the specified branch.
                git branch: 'main', url: 'https://github.com/manoranjanchittoju/python-docker-jnks-webapp1.git'
            }
        }
        stage('Build') {
            steps {
                // Builds the Docker image as specified in the docker-compose.yml file.
                sh 'docker-compose build'
            }
        }
        stage('Deploy') {
            steps {
                // Deploys the app by running docker-compose in detached mode.
                sh 'docker-compose up -d'
            }
        }
    }
    
    post {
        success {
            echo 'Deployment completed successfully!'
        }
        failure {
            echo 'Deployment failed. Check the logs for errors.'
        }
    }
}
