docker-compose up -d

docker login -u $DOCKER_USERNAME  -p $DOCKER_PASS

if [[$GIT_BRANCH == "origin/main"]]; then
docker tag reactapp jeevaarasu/capstone:prod
docker push jeevaarasu/prod
elif [[$GIT_BRANCH== "dev"]]; then
docker tag reactapp jeevaarasu/capstone:dev
docker push jeevaarasu/dev
fi