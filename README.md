  as to practice and understand cloudformation' i reffered from using a built template
  however i did use ec2 create instance snippet as awell as routetable snippets

  this project consists of the following:

  1. an ec2 instance created on aws that runs an image of jenkins with installed aws cli and docker

  2. a cloudformation file wirtten in yml that boots up our requested stack
  
  3. 2 docker images that run on ports 12127 and 12128, that consist with our ruby applications

  4. a docker compose file for ease of use
  
  5. a jenkins file with our ci/cd implementation

  the pipeline constists of:

  1. checkout stage, the pipeline is called to execute whe code is pushed to github

  2. build stage: building our images locally and tagging them
  
  3. push stage: once the images are built, they will be pushed to dockerhub

  4. a deploy stage: after our images are pushed, from within our jenkins container,an awscli command is called to created our requested cloudformation stack

  5. the stack will be created with  and ec2 instance that has docker + compose installed 
