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

### How to run the test suite

```shell
rails test
```

### Services (job queues, cache servers, search engines, etc.)

`TODO : workers de scrapping`

### Deployment instructions

`TODO : Heroku instructions`
