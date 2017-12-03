# Olympic Flame API

[![Build Status](https://travis-ci.org/zelazna/olympic_flame_api.svg?branch=master)](https://travis-ci.org/zelazna/olympic_flame_api)
[![Test Coverage](https://api.codeclimate.com/v1/badges/cc1b371261ea4e99a91a/test_coverage)](https://codeclimate.com/github/zelazna/olympic_flame_api/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/cc1b371261ea4e99a91a/maintainability)](https://codeclimate.com/github/zelazna/olympic_flame_api/maintainability)

la norme de commentaires pour le code est [ici](https://gist.github.com/chetan/1827484)

### Ruby version

version 2.4.1 , a installer de preference avec [rbenv](https://github.com/rbenv/rbenv)

### System dependencies

* Postgresql
* TODO

### Configuration

installation de Postgresql

```shell
brew install postgresql
```

### Database creation

```shell
rake db:create
```

crée la bdd de development et de test

```shell
rails db:seed
```

Pour Creer les flames paths

### How to run the test suite

```shell
rails test
```

### Deployment instructions

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

### API


#### Flame path list

Obtenir la liste des Flame Paths

##### Request

GET `{your_url}/paths`

###### Request Body

TODO

###### Response

TODO



#### Recuperer un path

##### Request

GET `{your_url}/paths/:id`

###### Response

```json
{
    "data":{}
}
```



#### Recuperer la liste des torches

##### Request

GET `{your_url}/torchs`

###### Response

```json
{
    "data":[{}]
}
```



#### Recuperer une torche

##### Request

GET `{your_url}/torchs/:id`

###### Response

```json
{
    "data":{}
}
```



#### Inserer un path poll

Creer sa custom Path

##### Request

POST `{your_url}/polls/path`

###### Request Body

```json
{
    "data":{}
}
```

###### Response

```json
{
    "data":{}
}
```



#### Voter pour une torche

##### Request

POST `{your_url}/polls/torchs`

###### Request Body

```json
{
    "data":{}
}
```

###### Response

```json
{
    "data":{}
}
```



#### Avoir les stats des Polls

##### Request

GET `{your_url}/polls`


###### Response

```json
{
    "data":{}
}
```



### Linter

Utilisation de rubocop

```shell
rubocop
```

fix files :

```shell
rubocop -a
```