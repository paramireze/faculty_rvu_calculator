# README, or read not me, that is the question 

docker-compose rails tutorial: https://docs.docker.com/compose/rails/

## Build the project
``` 
docker-compose run web rails new . --force --no-deps --database=postgresql
```

## Docker commands
``` 
docker-compose build
docker-compose up
docker-compose run web rake db:create
docker-compose up --build
docker-compose run web bundle install
```

