pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = "sharmilas22/my-node"
    }

    stages {
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Build') {
            steps {
                sh '''
                    echo 'Building..'
                    docker build -t "${DOCKER_IMAGE_NAME}" .

                '''
                 
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    echo 'Deploying..'
                    kubectl apply -f deployment.yaml
                    kubectl apply -f service.yaml
                    echo $(minikube service my-node-service --url)

                '''
            }
        }
    }
}