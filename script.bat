echo "Criando as imagens....."

docker build -t roberton003/projeto-backend:1.0 backend/.
docker build -t roberton003/projeto-database:1.0 database/.

echo "Realizando o push das imagens...."

docker push roberton003/projeto-backend:1.0 backend/.
docker push roberton003/projeto-database:1.0 database/.

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments..."

kubectl apply -f ./deployments.yml