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
  10. https://www.youtube.com/watch?v=Z3S2gMBUkBo
  11. https://dashboard.ngrok.com/get-started 
  https://medium.com/@developerwakeling/setting-up-github-webhooks-jenkins-and-ngrok-for-local-development-f4b2c1ab5b6
  
*/

// Import some library 
import groovy.json.JsonOutput
import groovy.json.JsonSlurper 

// Beautify display
def seperator60 = '\u2739' * 60
def seperator20 = '\u2739' * 20


node("master") {
    stage("Test on hooks"){
        sh """
            echo hellworld 
            hostname -f 
            uptime
            date
            free -hm   
        """
    }
}
