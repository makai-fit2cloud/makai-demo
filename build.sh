mvn clean package -Dmaven.test.skip=true

docker build -t registry.fit2cloud.com/north/test:20190918 .
docker push registry.fit2cloud.com/north/test:20190918