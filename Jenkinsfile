pipeline {
    agent none

    options {
        timeout(time: 4, unit: 'HOURS')
        timestamps()
    }
    stages{
         stage('Sonar')
          {
           agent {
                        dockerfile {
                            dir 'docker'
                            label 'docker'
                            args '-u root'
                                   }
                 }
           steps {
                 /sonar-scanner-3.0.3.778-linux/bin/sonar-scanner
                 }
          }
          }
         }
