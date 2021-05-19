#!/bin/zsh

TOKEN=$(curl -X POST http://localhost:8080/login \
  -d "{\"username\": \"voldy\",\"password\": \"voldy\"}" -H "Content-Type: application/json" \
    | jq -r '.access_token')

echo $TOKEN
rm /Users/jonathanpalacio/Desktop/go-jwt-example/curl/token.txt
# echo -H "Authorization: Bearer $TOKEN" >> /Users/jonathanpalacio/Desktop/go-jwt-example/curl/token.txt
echo $TOKEN >> /Users/jonathanpalacio/Desktop/go-jwt-example/curl/token.txt




