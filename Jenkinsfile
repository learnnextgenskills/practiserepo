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
                            dir '.'
                            args '-u root -v sonar:/root/.sonar/'
                                   }
                 }
           steps {
                   echo"Am inside of Docker" 
                   sh """#!/bin/bash -e
                         cd /sonar-scanner-3.0.3.778-linux/bin
                         ./sonar-scanner
                      """
                 }
          }
          }
         }
