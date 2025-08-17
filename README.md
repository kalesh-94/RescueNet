# 🐾 RescueNet: Animal Rescue Coordination System

RescueNet is a **Spring MVC web application** designed to streamline animal rescue operations.  
It connects **Reporters** (who report rescue cases), **Volunteers** (who handle cases), and **Admins** (who manage the system).  

---

## 🚀 Features

### 👤 Reporter
- Register and login securely.
- Report new rescue cases (location, description, details).
- Track the status of reported cases.

### 🤝 Volunteer
- Register and login.
- View assigned rescue cases.
- Update the status of cases (Pending → In Progress → Resolved).

### 🛠️ Admin
- Login as system admin.
- Manage reporters, volunteers, and rescue cases.
- Assign volunteers to reported cases.
- Dashboard view of all rescue activities.

---

## 🏗️ Tech Stack

| Layer         | Technology               |
|---------------|--------------------------|
| Frontend      | JSP, HTML, CSS, Bootstrap |
| Backend       | Java, Spring MVC          |
| Persistence   | DAO, JDBC / Hibernate (depending on your config) |
| Database      | MySQL (configurable in `application.properties`) |
| Build Tool    | Maven                     |
| Server        | Apache Tomcat             |

---

## ⚙️ Setup & Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/kalesh-94/RescueNet.git
   cd RescueNet/RescueNet
Import Project

Open Eclipse/IntelliJ

Import as Maven Project

Database Setup

Create a MySQL database (e.g., rescuenetdb)

Update connection details in spring-servlet.xml or application.properties

Run the Application

Deploy on Apache Tomcat 7/8/9

Access: http://localhost:8080/RescueNet


🎥 Demo Video

<video src="demo.mp4" controls width="600"></video>




🧑‍💻 Author
Kalesh Patil

