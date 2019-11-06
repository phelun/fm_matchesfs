#!/usr/bin/env groovy
/**
 Top 10 Jenkins concepts in one script
  1. AWS credentials setup
  2. Parameterized pipeline
  3. Dropdown selection based on requirements
  4. Custom Library Configurations
  5. Slack/email notifications
  6. Integrate with artefactory/s3 bucket
  7. USing github source branch plugin to scan your repo/project on github/bitbucket
  8. - if/else statements
     - switch/case statement
     - try/catch/finally aka exception handlin
     - def
     - return
     - internel variables
     - properties
  9. Taking concept from this guy https://gist.github.com/jonico/e205b16cf07451b2f475543cf1541e70
  10. cicd
*/

// Import some library 
import groovy.json.JsonOutput
import groovy.json.JsonSlurper 

// Beautify display
def seperator60 = '\u2739' * 60
def seperator20 = '\u2739' * 20


node('misc') {
    stage("Test on hooks"){
        sh"""
            echo hellworld 
            hostname -f 
            uptime 
        """"
    }
}