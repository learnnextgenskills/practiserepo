pipeline {
          agent {
                        dockerfile {
                            dir '.'
                            args '-u root -v sonar:/root/.sonar/'
                                   }
                 }

    options {
        timeout(time: 4, unit: 'HOURS')
        timestamps()
    }
    stages{
         stage('Build')
          {
           steps {
                  sh ' mvn clean test package -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true'
                 }

          }

         }
         }  
