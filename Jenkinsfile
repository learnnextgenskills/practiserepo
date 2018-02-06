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
                   mvn clean test package
                 }

          }

/*          stage('Sonar')
          {
           steps {
                   echo"Am inside of Docker" 
                   sh """#!/bin/bash -e
                         cd /sonar-scanner-3.0.3.778-linux/bin
                         ./sonar-scanner
                      """
                 }
          }
          }
         } */
