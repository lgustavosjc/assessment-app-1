#!/bin/bash
crumb=$(curl -u "$JENKINS_USER:$JENKINS_PASS" -s "http://$JENKINS_URL//crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)")
curl -u "jenkins:1234" -H "$crumb" -X POST http://$JENKINS_URL//job/ENV/build?delay=0sec
