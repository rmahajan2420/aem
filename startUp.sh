#!/bin/bash
cd /opt/aem/
nohup java -Xmx2048m -XX:MaxPermSize=256m -jar /opt/aem/cq-quickstart-6.2.0.jar -nofork -pt CHILD &
tailf /dev/null
