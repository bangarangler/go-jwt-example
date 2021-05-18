package main

import (
	"log"
	"os"

	"github.com/joho/godotenv"
)

func goDotEnvVar(key string) string {
	err := godotenv.Load(".env")
	if err != nil {
		log.Fatalf("error loading env")
	}
	return os.Getenv(key)
}

var (
	JWTAccessSecret  = goDotEnvVar("ACCESS_SECRET")
	RedisDSN         = goDotEnvVar("REDIS_DSN")
	JWTRefreshSecret = goDotEnvVar("REFRESH_SECRET")
)
