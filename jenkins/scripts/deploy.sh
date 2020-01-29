#!/bin/bash

#EL DELPOY LO QUE HACE PREVIAMENTE ES MANDAR UN ARCHIVO A LA INSTANCIA QUE CONTIENE LOS PROYECTOS QUE EN ESE ARCHIVO SE INDICA CUAL ES EL NOMBRE DEL PROYECTO Y LA VERSION QUE QUEREMOS EJECUTAR

# GENERAMOS UN ARCHIVO LLAMADO .auth QUE CONTIENE LA INFORMACION DE LA IMAGEN DEL REGISTRY QUE VAMOS A OBTENER
#echo springboot-pipeline > infoversion/.springboot-pipeline-info
#echo 2 >> infoversion/.springboot-pipeline-info


# TRANSIFERE EL ARCHIVO DE JENKINS AL SERVIDOR DONDE ESTA EL REGISTRY
#scp -i key/testsjenkins infoversion/.auth  alejandro.munoz@35.198.153.238:/tmp/.auth
#scp -i /opt/aws_linuxfacilito.pem ./jenkins/deploy/publish centos@linuxfacilito.online:/tmp/publish
#ssh -i /opt/aws_linuxfacilito.pem  centos@linuxfacilito.online /tmp/publish
#ssh -i key/testsjenkins alejandro.munoz@35.198.153.238

#ssh -i key/testsjenkinsnopass alejandro.munoz@35.246.237.70

#scp -i key/testsjenkinsnopass infoversion/.springboot-pipeline-info  alejandro.munoz@35.246.237.70:/tmp/.springboot-pipeline-info

#Deberia ser en el kubernetes donde se despliegua el proyecto

#Copio el script que levanta el servicio
scp -i jenkins/scripts/key/testsjenkinsnopass publish alejandro.munoz@35.246.237.70:/tmp/publish
#Copio el docker-compose y el .evn para levantar el servcio, en el .evn estan los parametros que necesita el servcio
scp -i jenkins/scripts/key/testsjenkinsnopass compose/docker-compose.yml alejandro.munoz@35.246.237.70:~/springboot-pipeline/
scp -i jenkins/scripts/key/testsjenkinsnopass compose/.env alejandro.munoz@35.246.237.70:~/springboot-pipeline/
#Ejecuto el script que levanta el servicio
ssh -i jenkins/scripts/key/testsjenkinsnopass alejandro.munoz@35.246.237.70 /tmp/publish
