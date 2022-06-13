# PERN Stack

The PERN Stack is an acronym for Postgres, Express, React, Node. It's a set of tools to create a complete web application.

To understand this project, I recommend that you could know these tolls:

* Postgres
* Express
* React
* Node

And this other technologies and libraries That I Use in this project:

* Material UI
* Docker

### Installation

This project consists in a *Web Frontend Application* and a *Web Backend Application*.

First, clone the repo:

```bash
git clone https://github.com/FaztWeb/pern-stack
```

to run the backend you can use docker:

```
cd server
docker-compose up
```

to run the frontend:
```
cd client
npm start
```

to delete database on docker:

```
docker-compose down --volumes
```


### Para crear la base de datos

```
cat database/build.sql | heroku pg:psql -a leseven
```

```
cat database/init.sql | heroku pg:psql -a leseven
```

```
cat database/init-vocablos.sql | heroku pg:psql -a leseven
```

### Establecer la variable de entorno jwtSecret

```
heroku config:set jwtSecret=pr4ct1c4_15v_pwd -a leseven
```