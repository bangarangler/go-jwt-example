#!/bin/zsh

curl http://localhost:8080/login \
  -H "Content-Type: application/json" \
  -d  "{\"username\": \"voldy\", \"password\": \"voldy\"}" \
      -X POST \
      -v | jq

# curl http://localhost:5000/graphql \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $(cat /Users/jonathanpalacio/Desktop/PLUARIS-API/token.txt)" \
#   -d '{"query": "query me($email: String!){me(email: $email){name _id email lastName companyName admin company}}","variables": {"email": "jonathan.palacio@nowigence.com"}}' \
#       -X POST \
#       -v | jq

# -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvbmF0aGFuLnBhbGFjaW9Abm93aWdlbmNlLmNvbSIsImlkIjoiNWQ4YjVkNzFiMWIzYWMyNjc3YjlhODcwIiwiY29tcGFueSI6Im5vd2lnZW5jZSIsImlhdCI6MTYxOTMwMTQzMSwiZXhwIjoxNjE5Mzg3ODMxfQ.d6tJ8_HNHMLgNAiD8ZV6hsyDshJFw6RCL0Ks9gjHWqs" \
