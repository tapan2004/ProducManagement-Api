# Product Management API 📦

A fully functional RESTful API built with **Spring Boot** and **Java 21** for managing products. This application provides standard CRUD operations (Create, Read, Update, Delete) and uses **Spring Data JPA** to connect to a **MySQL** database.

## 🚀 Technologies Used
* **Java 21**
* **Spring Boot** (Web, Data JPA)
* **MySQL Database**
* **Lombok** (Boilerplate code reduction)
* **Maven** (Dependency management)

## 🛠️ Prerequisites
* JDK 21 or higher installed
* Maven installed
* MySQL server running locally (Default Port: 3306)

## ⚙️ Configuration

Ensure you have a database created in MySQL named `productManagement`:
```sql
CREATE DATABASE productManagement;
```

Update the MySQL database credentials in `src/main/resources/application.properties` if your username or password differ:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/productManagement
spring.datasource.username=root
spring.datasource.password=Tmanna

# The server runs on port 8081 by default
server.port=8081
```

## 🏃‍♂️ Running the Application

1. Open a terminal and navigate to the root directory of the project.
2. Run the application using the Maven wrapper:
```bash
.\mvnw spring-boot:run
```
*(The application will start and listen on `http://localhost:8081`)*

## 📡 API Endpoints

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/api/products` | Retrieve all products |
| `GET` | `/api/products/{id}` | Retrieve a specific product by ID |
| `POST` | `/api/products` | Create a new product |
| `PUT` | `/api/products/{id}` | Update an existing product |
| `DELETE` | `/api/products/{id}` | Delete a product by ID |

### Example JSON Payload (`POST` & `PUT`)
```json
{
  "name": "Wireless Mouse",
  "description": "Ergonomic wireless mouse with fast response time.",
  "price": 29.99,
  "quantity": 150
}
```

## 💡 Key Features
- **Auto-generated Database Schema:** Hibernate automatically creates and updates the `products` table structures (`spring.jpa.hibernate.ddl-auto=update`).
- **RESTful Architecture:** Uses standard HTTP methods and clean URLs.
- **Connection Pooling:** Uses HikariCP for optimal database connection management out of the box.
