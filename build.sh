#!/bin/sh

echo "Building Auth Service" 


cd ./auth-service || exit 1
./mvnw clean package -DskipTests || exit 1


cd ..

echo "Building Eureka Service" 

cd ./eureka-server || exit 1



./mvnw clean package -DskipTests || exit 1

echo "All Builds completed" 