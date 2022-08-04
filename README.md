# ScalabilityTesting with CollegeMgmt app in Docker Swarm

Steps:
1. Create an ubuntu instance
2. Update the IP address of that instance in application/config/config.php file of https://github.com/SmithaVerity/CollegeMgmt_RDS.git 
3. Puty into that instance 
4. Run the following commands
```
  git clone https://github.com/SmithaVerity/CollegeMgmt_RDS.git
  cd CollegeMgmt_RDS/
  sh deployApp.sh
```


