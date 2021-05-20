#!/bin/zsh

# echo $(cat /Users/jonathanpalacio/Desktop/go-jwt-example/curl/token.txt)

curl http://localhost:8080/logout \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $(cat /Users/jonathanpalacio/Desktop/go-jwt-example/curl/token.txt)" \
      -X POST \
      -v | jq

