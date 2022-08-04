# ScalabilityTesting with CollegeMgmt app in Docker Swarm

Steps:
1. Create an ubuntu instance
2. Update the IP address of that instance in application/config/config.php file of https://github.com/SmithaVerity/CollegeMgmt_RDS.git 
3. Create RDS database with CollegeMgmt sample data
4. Update the conenction details in application/config/database.php file of https://github.com/SmithaVerity/CollegeMgmt_RDS.git
5. Puty into that instance 
6. Run the following commands

# Install the Codeignitor Docker image
```
  git clone https://github.com/SmithaVerity/ScalabilityTesting_CollegeMgmtDocker.git
  cd ScalabilityTesting_CollegeMgmtDocker/
  sh installDocker.sh
```

# Deploy the app
```
  apt update
  git clone https://github.com/SmithaVerity/CollegeMgmt_RDS.git
  exit
```

# Create image and push it to Docker hub
```
  sudo docker commit collegemgmtapp <<your docker id>>/collegemgmtapp:latest
  sudo docker login
  sudo docker push <<your docker id>>/collegemgmtapp:latest
```

# Test image
```
  sudo docker run --name collegemgmtdocker -p 80:80  -d smithajp/collegemgmtapp:latest
  sudo docker stop collegemgmtdocker
  sudo docker rm collegemgmtdocker
```
  
# Set up docker Swarm
```
  sh setupSwarm.sh
```


  
  
  
  
