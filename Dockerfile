#BaseImage
FROM ubuntu:latest

#Updating everything first
RUN apt-get update -y && apt-get upgrade -y

#Installing something
RUN apt-get install nginx -y

#Exposing the necessary ports for the above application
EXPOSE 80

#Actual Stuff which the final application has to run
CMD ["nginx","-g","daemon off;"]
