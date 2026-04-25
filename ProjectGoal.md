# docker-compose.yaml
- This file is the foundation for the orchestrativ the container . Being by defining the service you need 
 - Git server
 - Optional Reverse proxy 
 - Optional database 


 # Dockerfile 
 # config
 # Setup.sh

 # Dockerfile 
- Defines the container image for the git server 
- Even the gitea/gitea or gitlab/gitlab-ce  as the base image 
# Docker-compose-yml 
- Orchestrate the git serv and other services 
- Simplify the multi-contianer deplyomer 
# Config 
- Stores configuration files for the git server 

# data 
- Persistent storage for repositories and user data 
- Mounted  as a volumner to ensure data is not lost when constiners restart .

# Scripts 
- Contianers helper scripts for common task 
 - setup.sh - Automation task 
 - backup.sh - Backup up repositores and configuration 
 - restore.sh - Restores data from backup 


# nginx 
  - Stores environment variable 
  - Keep sensitive data out of version control 

  docker-compose down
docker-compose up -d