echo "Criando as imagens........."

docker build -t irenesantos/projeto-backend:1.0 backend/.
docker built -t irenesantos/projeto-database:1.0 database/.

echo "Realizando a push das imagens......"

docker push irenesantos/projeto-backend:1.0
docker push irenesantos/projeto-database:1.0

echo "Criando serviços no cluster Kubernetes..."

Kubectl apply -f ./services.yml

echo "Criando os deployments...."

Kubectl apply -f ./deployments.yml
