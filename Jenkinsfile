pipeline {
    agent {label 'monitoring'}
     tools {
          maven "Maven3"
        }
        stages {
            stage ('Build') {
                steps {
                    // Get the repo from GitHub
                    git 'https://github.com/sabinstoica/hello_mvn.git'
                    
                    // Build the Maven-based Java applications binary
                    sh "/usr/share/maven/bin/mvn package"
                    }
                            }
            stage ('Deploy') {
                steps {
                    // Get the repo from GitHub
                    git 'https://github.com/sabinstoica/hello_mvn.git'
                    
                    // Copy the jarfile from the previouse stage
                    sh "cp $jarfile ."
                    
                    // Do the docker image and container cleanup before starting the deployment
                    sh "./cleanup.sh"
                    
                    // Deploy the jar file into a docker image
                    sh "docker build -t $image ."
                    sh "docker run --name $container $image"
                    }
                            }
                            
        }    
}
