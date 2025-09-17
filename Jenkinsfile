pipeline {
  agent any

  environment {
    IMAGE_REPO = "ghcr.io/${env.GITHUB_OWNER ?: 'owner'}/${env.REPO_NAME ?: 'learning'}"
    IMAGE_TAG = "jenkins-${env.BUILD_NUMBER}"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker version || true'
        sh 'docker build -t ${IMAGE_REPO}:${IMAGE_TAG} .'
      }
    }

    stage('Run Tests') {
      steps {
        sh 'echo "Run your test command here"'
      }
      post {
        always {
          junit allowEmptyResults: true, testResults: 'reports/junit/*.xml'
          archiveArtifacts artifacts: 'reports/**/*', allowEmptyArchive: true
        }
      }
    }

    stage('Push (optional)') {
      when {
        expression { return env.GHCR_PAT?.trim() }
      }
      steps {
        withCredentials([string(credentialsId: 'ghcr_pat', variable: 'TOKEN')]) {
          sh 'echo $TOKEN | docker login ghcr.io -u ${env.GITHUB_OWNER ?: "owner"} --password-stdin'
        }
        sh 'docker push ${IMAGE_REPO}:${IMAGE_TAG}'
      }
    }
  }
}
