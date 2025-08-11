📚 Library Management System – SQL Joins Practice

📌 Objective

This project demonstrates the use of **different types of SQL Joins** (`INNER`, `LEFT`, `RIGHT`, `NATURAL`, `SELF`, `CROSS`, and simulated `FULL JOIN`) using a **Library Management System** database containing Authors, Books, Members, and Issued Books.

---

 🛠️ Tools & Technologies

 **MySQL 8.x** – Database Management System
 **MySQL Workbench** – Database design & query execution
 **SQL** – DDL, DML, and Join queries

---

 📁 Database Structure

 **Tables & Fields**

1. **authors**

   * AuthorID *(INT, PK, AUTO\_INCREMENT)*
   * Name *(VARCHAR)*
   * Country *(VARCHAR)*
   * Birthyear *(INT)*
   * Deathyear *(INT)*
   * BIO *(TEXT)*

2. **books**

   * BookID *(INT, PK, AUTO\_INCREMENT)*
   * Title *(VARCHAR)*
   * AuthorID *(INT, FK)*
   * Genre *(VARCHAR)*
   * Publishedyear *(DATE)*

3. **members**

   * MemberID *(INT, PK, AUTO\_INCREMENT)*
   * Name *(VARCHAR)*
   * Email *(VARCHAR)*
   * Joindate *(DATE)*

4. **issued\_books**

   * IssuedID *(INT, PK, AUTO\_INCREMENT)*
   * BookID *(INT, FK)*
   * MemberID *(INT, FK)*
   * Issuedate *(DATE)*
   * Returndate *(DATE)*

---

🔗 Relationships

* **authors → books**: One author can write many books.
* **members → issued\_books**: One member can have multiple issued books.
* **books → issued\_books**: One book can be issued multiple times.

---

📊 Join Types Implemented

1. **INNER JOIN** – Fetch books with their authors.
2. **LEFT JOIN** – Show all members and their issued books (including those with none).
3. **RIGHT JOIN** – Show all issued books with their member details.
4. **NATURAL JOIN** – Join books and authors automatically by matching column names.
5. **SELF JOIN** – Compare authors from the same country.
6. **CROSS JOIN** – Show all combinations of members and books.
7. **FULL JOIN (Simulated)** – Combine LEFT and RIGHT joins to show all records.

---
📌 Deliverables

* SQL scripts for creating tables.
* SQL scripts for inserting sample data.
* Join queries with explanations.
* ER Diagram of the database.

📌Summary 

Learned how to implement different SQL join types (INNER, LEFT, RIGHT, NATURAL, SELF, CROSS, and FULL JOIN) to retrieve related data from multiple tables.
Gained hands-on experience in creating relationships, writing join queries, and understanding their use cases in a Library Management System.
