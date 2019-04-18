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

## Generate Models
Make sure you are inside the container `docker exec -it <app> bash`
``` 
docker-compose run web rails g model User first_name:string last_name:string user_name:string email:string
docker-compose run web rails g model Role name:string
docker-compose run web rails g model UserRole user:references role:references
docker-compose run web rails g model Category name:string description:string parent_category_id:integer lvl:integer lft:integer rgt:integer retired:date
docker-compose run web rails g model Question category:references value:string label_text:string name:string helper_text:string required:boolean order:integer is_text_area:boolean has_checkboxes:references
docker-compose run web rails g scaffold_controller Category name:string description:string retired:date

```

## Tearing things down
``` 
docker-compose run web rails db:drop

docker-compose run web rails destroy model Category
docker-compose run web rails destroy model Question
```