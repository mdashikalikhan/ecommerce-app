#!/bin/sh

echo "Building shared library"

cd ./shared-lib || exit 1

./mvnw clean install || exit 1

cd ..

echo "Building Auth Service" 


cd ./auth-service || exit 1
./mvnw clean package -DskipTests || exit 1


cd ..

echo "Building Product Service" 


cd ./product-service || exit 1
./mvnw clean package -DskipTests || exit 1


cd ..

echo "Building API Gateway" 


cd ./api-gateway || exit 1
./mvnw clean package -DskipTests || exit 1


cd ..

echo "Building Eureka Service" 

cd ./eureka-server || exit 1



./mvnw clean package -DskipTests || exit 1

echo "All Builds completed" 