#!/bin/zsh

curl http://localhost:8080/token/refresh \
  -H 'Authorization: Bearer $(cat /Users/jonathanpalacio/Desktop/go-jwt-example/curl/token.txt)' \
  -H 'Content-Type: application/json' \
  -d '{
  "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2MjIxMjQ0NDQsInJlZnJlc2hfdXVpZCI6IjUxYzM4YzdhLWU3ZWEtNDlmMy05NGZjLTk1YmRjNDc4ZDNiZCIsInVzZXJfaWQiOjF9.wi86YaNnPD_KFgkgTWpfsfVx6RsBhXAEQ6X2FieyK0A"
}' \ -v | jq

# To test this route replace the refresh_token with current refresh_token and
# run it, should remove redis session and create new refresh and access tokens
