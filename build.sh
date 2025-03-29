docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID divybagora10/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID divybagora10/$JOB_NAME:latest

docker push divybagora10/$JOB_NAME:$BUILD_ID

docker push divybagora10/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID divybagora10/$JOB_NAME:$BUILD_ID divybagora10/$JOB_NAME:latest
