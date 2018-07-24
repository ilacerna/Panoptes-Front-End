#!groovy

node {
    checkout scm

    def dockerImageName = 'zooniverse/panoptes-front-end:${BRANCH_NAME}'
    def newImage = null

    stage('Build Docker image') {
        newImage = docker.build(dockerImageName)
    }

    stage('Stage branch') {
        newImage.inside('-w /src/') {
            sh 'export NODE_ENV=staging; export SUBDIR=${BRANCH_NAME}; npm run _stage'
        }
    }
}
