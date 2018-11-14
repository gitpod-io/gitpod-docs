podTemplate(
    label: 'agent',
    cloud: 'kubernetes',
    nodeSelector: 'gitpod.io/jenkins_agents=true',
    containers: [
        containerTemplate(
            name: 'devenv',
            // Dockerfile: https://github.com/TypeFox/gitpod/blob/build/devops/dev-environment/Dockerfile
            // Registry: https://console.cloud.google.com/gcr/images/gitpod-dev/EU/dev-environment?project=gitpod-dev
            image: 'eu.gcr.io/gitpod-dev/dev-environment:895f4b489787becbb976c18a0e926fe623b15aef',
            ttyEnabled: true,
            privileged: false,
            alwaysPullImage: true,
            workingDir: '/home/jenkins',
            resourceRequestCpu: '100m',
            resourceLimitCpu: '1000m',
            resourceRequestMemory: '100Mi',
            resourceLimitMemory: '1000Mi',
        )
    ]
) {
    node('agent') {
        container('devenv') {

            checkout scm

            stage("mdbook") {
                sh("cargo install mdbook")
                sh("mdbook build")
                archiveArtifacts(artifacts: 'site/**/*')
            }
            stage('check') {
                sh("mdbook test")
            }
            if(env.BRANCH_NAME == "published") {
                stage("gcloud") {
                    withCredentials([file(credentialsId: 'gitpod-publish-static-web-pages', variable: 'gkey')]) {
                        sh('gcloud auth activate-service-account --key-file=${gkey}')
                    }
                    sh("gcloud config set project gitpod-191109")
                    sh("gsutil -m rsync -d -r ./site/doc/ gs://docs-gitpod-io/")
                    sh("gsutil -m acl ch -r -u AllUsers:R gs://docs-gitpod-io/")
                }
            }
        }
    }
}

