# FinTech Bootcamp Module 7 - SQL Assignment
## Data Modeling
Repo: ftb07_SQL_Challenge

## Overview 
The csv data files provide indicat that we are analyzing credit card transactions 
from an OOn-Line Transaction Processing (OLTP) System
  
## Components of an On-Line Transaction Processing (OLTP) Data Structure 
1. Static/Meta Data
    * Short lists that rarely change. Attributues used by other data components.  
    * [CSV File: Merchant_Category](data/merchant_category.csv)
2. Master Data 
    * Primary objects within the system
    * [CSV File: Cardholder.csv](data/card_holder.csv)
    * [CSV File: Credit_Card.csv](data/credit_card.csv)
    * [CSV File: Merchant.csv](data/merchant.csv)
3. Documents (Not Provided)
    * Staging of a transaction
    * Combination of Static and Master Data whit transaction specific parameters
    * Header Table: Credit Card, Merchant and sales totals
    * Detail Table: List of items purchased, quatities, and prices
4. Transactions
    * Exicution of a Document 
    * [CSV File: Transaction.csv](transaction.csv)

## Entity Relationship Diagram (ERD)
![Credit Card Transactions](images/sql_db_revC.png)
