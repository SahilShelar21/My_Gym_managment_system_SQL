# My_Gym_managment_system_SQL
# Gym Management System - SQL Project

This project implements an enhanced Gym Management System using SQL, designed to manage trainers, members, cafe orders, and personal training sessions.

## Project Description

The enhanced Gym Management System extends the basic gym management functionalities to include cafe operations and personal training management. It provides a comprehensive database for:

* **Members:** Personal details, membership information, and contact details.
* **Trainers:** Trainer profiles, specializations, and contact information.
* **Cafe Orders:** Records of food and beverage orders placed by members.
* **Personal Training:** Scheduling and tracking of personal training sessions.

## Database Schema

The database consists of the following tables:

* `Members`: Stores member details (MemberID, FirstName, LastName, DateOfBirth, Address, PhoneNumber, Email, MembershipID).
* `Trainers`: Stores trainer details (TrainerID, FirstName, LastName, Specialization, PhoneNumber, Email).
* `CafeOrders`: Stores cafe order details (OrderID, MemberID, OrderDate, ItemName, Quantity, Price).
* `PersonalTraining`: Stores personal training session details (SessionID, MemberID, TrainerID, SessionDate, SessionTime, DurationMinutes).

## SQL Queries

The project includes various SQL queries for:

* **Data Insertion:** Adding new members, trainers, cafe orders, and personal training sessions.
* **Data Retrieval:** Retrieving member details, trainer information, cafe order history, and personal training schedules.
* **Data Updates:** Modifying member details, trainer profiles, cafe order details, and personal training schedules.
* **Data Deletion:** Removing members, trainers, cafe orders, and personal training sessions.
* **Data Analysis:** Generating reports on membership statistics, cafe order summaries, and personal training session schedules.
* **Joins:** Combining data from multiple tables to get comprehensive information, such as member cafe order histories or trainer personal training schedules.
* **Aggregations:** Calculating summaries like total cafe revenue, average personal training session durations, etc.

## How to Use

1.  **Clone the Repository:**
    ```bash
    git clone [repository URL]
    cd [repository directory]
    ```
2.  **Set up your SQL Environment:**
    * Ensure you have a SQL database server (e.g., MySQL, PostgreSQL, SQL Server) installed.
    * Create a new database for the Gym Management System.
3.  **Import the Database Schema:**
    * Run the SQL scripts provided in the `schema` directory to create the tables.
4.  **Populate the Database (Optional):**
    * Use the provided sample data or insert your own data using the `INSERT` queries.
5.  **Run SQL Queries:**
    * Execute the provided SQL queries or write your own queries to interact with the database.

## Files Included

* `schema/`: Contains SQL scripts for creating the database tables.
* `queries/`: Contains SQL scripts for various data operations and reports.
* `data/`: (Optional) Contains sample data for populating the database.
* `README.md`: Project documentation.

## Contributing

Contributions are welcome! Please feel free to:

* Submit bug reports and feature requests.
* Implement new SQL queries and optimizations.
* Improve the database schema.
* Add sample data.

## License

This project is licensed under the [License Name] License.

## Author

[Your Name/GitHub Username]
