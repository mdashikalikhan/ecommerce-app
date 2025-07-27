
@echo off

set JAVA_HOME=C:\Program Files\Java\jdk-17.0.4.1

set PATH=%JAVA_HOME%\bin;%PATH%





echo Building shared library

cd shared-lib

call mvnw clean package -DskipTests

if errorlevel 1 exit /b 1


echo Building Auth Service

cd auth-service
call mvnw clean package -DskipTests
if errorlevel 1 exit /b 1
cd ..

echo Building Eureka Service

cd eureka-server
call mvnw clean package -DskipTests
if errorlevel 1 exit /b 1
cd ..

echo All Builds completed
