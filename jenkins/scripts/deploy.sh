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

scp -i key/testsjenkinsnopass publish alejandro.munoz@35.246.237.70:/tmp/publish

scp -i key/testsjenkinsnopass compose/docker-compose.yml alejandro.munoz@35.246.237.70:~/springboot-pipeline/
scp -i key/testsjenkinsnopass compose/.env alejandro.munoz@35.246.237.70:~/springboot-pipeline/

ssh -i key/testsjenkinsnopass alejandro.munoz@35.246.237.70 /tmp/publish
