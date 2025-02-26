# ERRO MESAGE : Web server failed to start. Port 8080 was ready in use

It sounds like another process is already using port 8080, which is preventing your web server from starting. Here are a few ways to resolve this issue:

**1. Change the Port:** You can configure your application to use a different port. For example, if you're using Spring Boot, you can add **server.port=8090** to your **application.properties** file.

The application.properties file in Spring Boot serves as a primary configuration file, enabling customization of application behavior. It is conventionally located in the \*_src/main/resources_ directory. This file uses a key-value structure to define properties that configure aspects such as database connections, server settings, and logging level

**2. Identify and Stop the Process:** You can identify the process using port 8080 and stop it. On Windows, you can use the command **netstat -ano | findstr 8080** to find the process ID (PID) and then **taskkill /PID <PID> /F** to stop it.
