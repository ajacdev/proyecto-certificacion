pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/ajacdev/proyectoReservas.git'
        GIT_BRANCH = 'main'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: "${GIT_BRANCH}", url: "${GIT_REPO}"
            }
        }
        stage('Construcción') {
            steps {
                // Compila el proyecto Java utilizando Maven
                sh 'mvn clean package'
            }
        }
        stage('Pruebas') {
            steps {
                // Ejecuta las pruebas unitarias
                sh 'mvn test'
            }
        }
        stage('Despliegue') {
            steps {
                // Construye la imagen Docker y la ejecuta localmente
                sh 'docker build -t proyecto-certificacion .'
                sh 'docker run -d -p 8080:8080 proyecto-certificacion'
            }
        }
    }
}
