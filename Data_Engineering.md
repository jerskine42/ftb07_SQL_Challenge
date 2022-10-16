# FinTech Bootcamp Module 7 - SQL Assignment
Repo: ftb07_SQL_Challenge

### Data Engineering
    * Using your database model as a blueprint, create a database schema for each of your tables and relationships.   
    * Remember to specify data types, primary keys, foreign keys, and any other constraints you defined.
    * After creating the database schema, import the data from the corresponding CSV files.

## Process: Create and Populate a Database
1. Data Warehouse Approach
    * SQL Server Naming Convention:
        * [Server Name].[Database Name].[Schema Name].[Table Name].[Feild Name]
    * Data imported from other systems is staged. 
        * A shcema called "stage" can be used to isolate this data.  
    * Data is moved from the staged tables into the procduction tables. 
        * Production tables use the "dbo" (Database Object) schema.  
    * The process is refered to as Extract Transform and Load (ETL). Examples:  
        * Hints suggested transforming the card field from int ot varchar(20)  
        * Hints suggested transforming the date field to timestamp  
    * Repeatability: The entire process can be automated
        * Stored Procedures run the various scripts
        * A Database Analyst (DBA) can set the stored proceedures to run automatically (over night)  
2. Create a Database
    * Right-Click Databases --> New Database
    * Parameter selection to be added later
    * ![SSMS New Database](images/ssms_New_Database.png)
3. Import Data
    * Create a schemna called "stage". One time process.  
        * Database --> Security --> Right-Click Schemas --> New Schema
        * Parameter selection to be added later
        * ![SSMS New Schema](images/ssms_New_Schema.png)
    * Import CSV files 
        * Right-Click Database --> Tasks --> Import Flat File
        * ![1. Launch Wizzard](images/ssms_Import_Flat_File.png)
        * ![2. Select CSV file](images/ssms_Import_Specify_Input_File.png)
        * ![3. Preview Data](images/ssms_Import_Preview_Data.png)
        * ![4. Configure Columns](images/ssms_Import_Modify_Columns.png)
        * ![5. Verify Import Parameters ](images/ssms_Import_Summary.png)
        * ![6. Import Result](images/ssms_Import_Results.png)
3. Stored Proceedures: Create Tables 
    * Contains data (csv) files imnported into the system
4. Stored Proceedures: Insert Data from Imports
    * Contains images used in the various readme files
5. Stored Proceedures: Alter Table - Add Foreign Key Constraints
    * sdgdsfg
6. Master Strored Proceedure: Runs all storeed proceedures
    * Internal documentation of the Data Engineering Plan

## ReadMe Documents
1. Report
    * Report 1 - Main Problem
    * Report 2 - Challenge Problem
2. Schema
    * Quick DBD
3. SQL 
    * How to use SQL Server Management Studio
    * Overview of this Credit Card Transactions database' design

## Code
1. SQL - Data Organization
2. Python - Data Visualization
3. Python - Challenge
