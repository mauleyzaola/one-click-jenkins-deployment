# One Click Jenkins Deployment

## One-Click Deployment: Securely Host Jenkins with Nginx and SSL with Letsencrypt Using Docker Compose
Are you looking to deploy a secure Jenkins instance with a proxy and SSL support? Look no further! In this tutorial, we will guide you through the process of setting up Jenkins with Nginx proxy and SSL using Letsencrypt and Docker Compose. Whether you are a developer looking to automate your CI/CD pipeline or a system administrator looking to manage your infrastructure, this tutorial has you covered. With just a few simple steps, you will be up and running with a fully-functional Jenkins instance in no time. So let's get started!

Original article published in Medium: 

https://omerkarabacak.medium.com/one-click-deployment-securely-host-jenkins-with-nginx-and-ssl-with-letsencrypt-using-docker-1303b06c3369

### Prerequisites:
Docker and Docker Compose installed on your machine
A domain name pointed to the server's IP address

### docker-compose.yml
In Docker Compose file, we have defined three services:

**Jenkins:** This is the Jenkins container that will run the Jenkins server.

**Nginx proxy:** This is the Nginx proxy container that will act as a reverse proxy for Jenkins.

**Letsencrypt-nginx-proxy-companion:** This is a container that helps generate and renew SSL certificates for our domain using Letsencrypt.

We have also defined some volumes and networks that will be used by the containers.

### .env file

Replace your-domain.com with your actual domain name:

VIRTUAL_HOST=your-domain.com

LETSENCRYPT_HOST=your-domain.com

LETSENCRYPT_EMAIL=your@email.com

## Start the containers
Now, we can start the Jenkins, Nginx proxy, and Letsencrypt containers using the following command:
```
docker-compose up -d
```
This will pull the required images and start the containers in the background.
You can check the status of the containers using the following command:
```
docker-compose ps
```

## Get Jenkins administrator password

```
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

Support Medium and me :) https://omerkarabacak.medium.com/membership