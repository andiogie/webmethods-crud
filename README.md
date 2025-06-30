## 📦 Basic CRUD Integration using webMethods + MySQL

This project demonstrates a simple, real-world use case of CRUD operations in Software AG webMethods using Flow Services and exposed via REST.  
It uses **MySQL** (XAMPP) as the database and Postman to test the endpoints.

---

## 📁 Package Contents

### 1. `IntegrationServices.zip`  
Contains:
- ✅ JDBC Adapter Services (for MySQL)
- ✅ Flow Wrappers for each operation
- ✅ Java Services (string-to-long conversion, customer code formatter)
- ✅ Logic services (select, insert, update)

This is the **core logic package** that handles direct interaction with the database.

---

### 2. `IntegrationWebServices.zip`  
Contains:
- ✅ REST Resources (GET, POST, PATCH)
- ✅ Provider services to expose endpoints
- ✅ Clean response formatting and HTTP method routing

This package is focused on **API exposure**, so Postman or external systems can access the logic easily.

---

## 🗃️ Database Script

### `integration_db.sql`  
- Designed for **MySQL**
- Creates the `mst_customer` table
- Includes optional test data
- Works perfectly with XAMPP (MariaDB)

---

## 🧪 Postman Collection

### `INTEGRATION COLLECTION.postman_collection.json`  
Includes:
- GET `/customer/{id}`
- POST `/customer`
- PATCH `/customer`

All endpoints hit the REST services deployed from `IntegrationWebServices.zip`.

Default base URL: `localhost:5555/restv2/integration.webservices:mstcustomer/mstcustomer/`  
Update as needed based on your IS port.

---

## 🚀 Setup Instructions

1. Install both packages via webMethods Admin Console  
   *(Packages > Management > Install Inbound)*

2. Run `integration_db.sql` in your MySQL (XAMPP phpMyAdmin or MySQL CLI)

3. Import Postman collection and test the following:
   - GET customer by ID
   - Insert new customer (auto-generates customer code)
   - Update existing customer

4. Done! 🎉 Data flows from REST to Flow Services and back

---

Let me know if you need help setting it up — I’m open to collaborate or freelance projects in this area!

#webMethods #MySQL #FlowServices #Postman #API #integration #freelance #learningBySharing
