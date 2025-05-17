./stop-en-remove-container.sh 

echo *** building image
docker image build -t opdr7-img .

echo *** creating and starting container
docker container run -dt --name opdr7-cont -p 81:80 opdr7-img
