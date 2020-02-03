# LevelDB Sandbox

A way to experiment with [LevelDB](https://github.com/google/leveldb) and the [leveldb-ruby](https://github.com/wmorgan/leveldb-ruby) without messing with your localhost.  
It uses docker-compose so you can use your favorite text editor and persist your work.

## Getting Started

1. Clone this repository.
2. `docker-compose build`
3.  Chillɐx

## Running

`docker-compose run leveldb-sandbox bash`  
This will mount your pwd into the container's `/app` dir.

## Persisting Databases

`./data-dir` is gitignored, dockerignored, and will be mounted into
running container via docker-compose. That sounds like a nice place to put your
databases.

## Example Scripts

```shell
localhost$ docker-compose run leveldb-sandbox bash
Creating network "level-db-test_default" with the default driver

root@a649e0f9d327:/app# ruby ./examples/make-a-database.rb
creating a database with 1,000,000 keys
Done
root@a649e0f9d327:/app#
```

Check out [/examples/](./examples) for more.
