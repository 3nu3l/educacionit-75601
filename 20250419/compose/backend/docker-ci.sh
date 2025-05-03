export AWS_PROFILE=curso-devops-edit
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 781013578291.dkr.ecr.us-east-1.amazonaws.com
#docker build -f ../Dockerfile -t curso-edit-backend .
docker build -t curso-edit-backend .
docker tag curso-edit-backend:latest 781013578291.dkr.ecr.us-east-1.amazonaws.com/curso-edit-backend:latest
docker push 781013578291.dkr.ecr.us-east-1.amazonaws.com/curso-edit-backend:latest

# entrega continua o continuous delivery
docker pull 781013578291.dkr.ecr.us-east-1.amazonaws.com/curso-edit-backend:latest

# implementación continua o continuous deployment
docker pull 781013578291.dkr.ecr.us-east-1.amazonaws.com/curso-edit-backend:latest
docker-compose up -d