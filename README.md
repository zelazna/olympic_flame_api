# Olympic Flame API

[![Build Status](https://travis-ci.org/zelazna/olympic_flame_api.svg?branch=master)](https://travis-ci.org/zelazna/olympic_flame_api)
[![Test Coverage](https://api.codeclimate.com/v1/badges/cc1b371261ea4e99a91a/test_coverage)](https://codeclimate.com/github/zelazna/olympic_flame_api/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/cc1b371261ea4e99a91a/maintainability)](https://codeclimate.com/github/zelazna/olympic_flame_api/maintainability)

la norme de commentaires pour le code est [ici](https://gist.github.com/chetan/1827484)

## Ruby version

version 2.4.1 , a installer de preference avec [rbenv](https://github.com/rbenv/rbenv)

## System dependencies

* Postgresql (sans docker)
* Docker

## Configuration

installation de Postgresql

```shell
brew install postgresql
```

## Database creation

```shell
rake db:create
```

créer la bdd de development et de test

```shell
rails db:seed
```

Pour créer du contenu dans la bdd

## Avec Docker

[https://docs.docker.com/compose/rails](https://docs.docker.com/compose/rails)

## Schemas

### Database

![BDD SCHEMA](./images/ERD.png)

### Application

APP Schema [draw.io](https://www.draw.io/#Hzelazna%2Folympic_flame_api%2Fmaster%2Fapp_schema.xml)

## How to run the test suite

```shell
rails test
```

## Deployment instructions

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Linter

Utilisation de rubocop

```shell
rubocop
```

fix files :

```shell
rubocop -a
```