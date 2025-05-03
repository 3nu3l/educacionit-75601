export AWS_PROFILE=curso-devops-edit
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 781013578291.dkr.ecr.us-east-1.amazonaws.com
docker build -t curso-edit-backend .
docker tag curso-edit-backend:latest 781013578291.dkr.ecr.us-east-1.amazonaws.com/curso-edit-backend:latest
docker push 781013578291.dkr.ecr.us-east-1.amazonaws.com/curso-edit-backend:latest