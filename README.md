# Request Handler Demo

## Installation

```sh
$ git clone git@github.com:MatthewRDodds/request-handler-demo.git
$ cd request-handler-demo
$ bundle install
```

## Setup

```sh
bin/rake db:create db:migrate db:seed
```


## Demo Requests

Valid Request

```
curl -XPOST \
     -H "Accept: application/json" \
     -H "Content-type: application/json" \
     -d '{"check_out":{"user_id":"1","book_id":"1"}}' \
     http://localhost:3000/api/check_outs
```

Invalid Request(s)

```
curl -XPOST \
     -H "Accept: application/json" \
     -H "Content-type: application/json" \
     -d '{"check_out":{"book_id":"1"}}' \
     http://localhost:3000/api/check_outs
```

```
curl -XPOST \
     -H "Accept: application/json" \
     -H "Content-type: application/json" \
     -d '{"check_out":{"user_id":"1"}}' \
     http://localhost:3000/api/check_outs
```
