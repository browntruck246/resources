# **Step 1: Set Up Spring Boot Project**    
First, create a new Spring Boot project using Spring Initializr. Include dependencies like Spring Web.

**Example Directory Structure:**
```
spring-boot-react/
├── backend/
│   ├── src/main/java/com/example/demo/
│   │   ├── DemoApplication.java
│   │   └── controller/
│   │       └── DataController.java
│   ├── src/main/resources/
│   │   └── static/ (will contain React build files)
├── frontend/
│   ├── public/
│   ├── src/
│   └── package.json

```
**DemoApplication.java**    

JAVA
```
package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
}
```
# **Step 2: Set Up React Application**    
Inside the **frontend** directory, create a new React application using Create React App: 

BASH
```
npx create-react-app frontend
cd frontend
npm run build

```
This command will generate a **build** directory with static files ready for production.

# **Step 3: Add React Build to Spring Boot**   

Copy the contents of the **build** directory from your React app into **src/main/resources/static** in your Spring Boot project. This will allow Spring Boot to serve the static files.

**Example Directory Structure After Adding Build Files:**
```
spring-boot-react/
├── backend/
│   ├── src/main/resources/static/ (contains React build files)

```
# **Step 4: Configure Spring Boot to Serve React**    
Ensure your Spring Boot application serves the static content properly. You might not need extra configuration if you're using the default settings.

# **Step 5: Connect React to Spring Boot Backend**     
Create REST endpoints in your Spring Boot application and fetch data from these endpoints in your React application.   

**DataController.java**
```
package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class DataController {
    @GetMapping("/api/data")
    public List<String> getData() {
        return Arrays.asList("Data1", "Data2", "Data3");
    }
}

```
# **Fetching Data in React**    
Inside your React application, fetch the data from the Spring Boot endpoint.

**Example App.js:**

JAVASCRIPT
```
import React, { useEffect, useState } from 'react';
import './App.css';

function App() {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetch('/api/data')
      .then(response => response.json())
      .then(data => setData(data));
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>React and Spring Boot Integration</h1>
        <ul>
          {data.map((item, index) => (
            <li key={index}>{item}</li>
          ))}
        </ul>
      </header>
    </div>
  );
}

export default App;

```
# **Running the Application**

**1. Run Spring Boot application:**

BASH
```
cd backend
mvn spring-boot:run
```
**2.Navigate to the application** in your browser, usually at http://localhost:8080, to see your React app being served by Spring Boot.