# Students Information System – PostgreSQL

A web-based Student Information Management System built using **PHP** and **PostgreSQL**.

This project demonstrates relational database design, backend integration with PostgreSQL, authentication handling, and modular PHP development using reusable components.

---

## 📌 Project Overview

The system allows users to:

- Register and log in securely
- Manage student records
- Manage course information
- Store student marks
- Generate grades based on performance
- View structured academic data

The backend database is designed using PostgreSQL with properly separated SQL schema files for clarity and maintainability.

---

## 🗂 Project Structure

```
Students_Infromation-PostgreSQL/
│
├── includes/                # Reusable layout and helper functions
│   ├── header.php
│   ├── footer.php
│   └── functions.php
│
├── sql/                     # Database schema and setup scripts
│   ├── 01_create_users_table.sql
│   ├── 02_create_students_table.sql
│   ├── 03_create_courses_table.sql
│   ├── 04_create_marks_table.sql
│   └── 05_grades.sql
│
├── index.php                # Main landing/dashboard page
├── register.php             # User registration
├── login.php                # Authentication handling
├── logout.php               # Session termination
├── grades.php               # Grade display and logic
├── aup.php                  # Application functionality page
├── privacy_policy.php       # Privacy policy page
└── .gitignore
```

---

## 🛠️ Technologies Used

- PHP (Backend development)
- PostgreSQL (Relational Database)
- SQL (DDL for schema design)
- HTML/CSS (Frontend structure)
- Modular PHP includes for clean architecture

---

## 🧠 Database Design

The system consists of the following core tables:

- **users** – Handles authentication and user management
- **students** – Stores student information
- **courses** – Contains course details
- **marks** – Stores student marks for each course
- **grades logic** – Defines grading rules and evaluation criteria

SQL scripts are organized in numbered order to ensure correct execution based on table dependencies.

---

## 🚀 Setup Instructions

1. Install PostgreSQL.
2. Create a new database.
3. Execute the SQL files inside the `sql/` folder in the following order:

   ```
   01_create_users_table.sql
   02_create_students_table.sql
   03_create_courses_table.sql
   04_create_marks_table.sql
   05_grades.sql
   ```

4. Configure your database connection credentials inside the PHP configuration file (typically inside `functions.php`).
5. Run the project using:
   - XAMPP / WAMP / MAMP
   - Or PHP built-in development server

---

## 🎯 Skills Demonstrated

- Relational database schema design
- Foreign key relationships
- Backend authentication system
- Modular PHP architecture
- Structured SQL organization
- Full-stack database-driven application development

---

## 📖 Purpose

This project was built to demonstrate practical integration between PHP and PostgreSQL while applying core database design principles in a real-world academic management scenario.
