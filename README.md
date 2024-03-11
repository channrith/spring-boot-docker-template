# Getting Started

### Build the Project:
* Navigate to the root directory of your Spring Boot project using the terminal or command prompt.
* Run the following command to build the project:

```
./mvnw clean package
```

This command will compile the code, run tests, and package the application into a JAR file.

If you're using Windows, you can use mvnw.cmd instead of ./mvnw.

### Run the Application:
* Once the build process completes successfully, you can find the generated JAR file inside the target directory of your project.
* Run the JAR file using the following command:

```
java -jar target/your-application-name.jar
```

### Access the Application:
* Once the application starts successfully, you can access it through a web browser or a REST client.
* By default, Spring Boot applications typically run on http://localhost:8080. You can access your application by navigating to this URL in your web browser.

### Optional: Customizing Port:
* If you want to run your application on a different port, you can specify it in the application.properties or application.yml file.
* Add the following line to application.properties:

```
server.port=your-desired-port-number
```

### Using Dockerfile

Buid Docker image
```
docker build -t my-app .
```

And then run it:
```
docker run -p 8080:8080 my-app 
```