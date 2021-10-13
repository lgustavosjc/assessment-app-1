#!/bin/bash
crumb=$(curl -u "$JENKINS_USER:$JENKINS_PASS" -s 'http://http://44.194.143.68:8080//crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -u "$JENKINS_USER:$JENKINS_PASS" -H "$crumb" -X POST http://http://44.194.143.68:8080//job/ENV/build?delay=0sec
