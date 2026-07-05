# Data Engineering & ETL Portfolio

## Overview
This repository showcases my practical skills in data engineering, data modeling, and data governance. It includes database design schemas and ETL (Extract, Transform, Load) processes designed to handle and structure student registration and performance data efficiently for reporting and analytics.

## Technologies & Tools 
* **ETL Tool:** SQL Server Integration Services (SSIS)
* **Database Management:** SQL Server
* **Key Concepts:** Data Governance, Star Schema Modeling, Data Pipelines

## Database Architecture & Modeling 
The relational database design utilizes a Star Schema approach to optimize analytical queries for student data:
* **Fact Table:** The `Fact_Registration` table serves as the central fact table, storing core performance scores and foreign keys.
* **Dimension Tables:** Surrounding tables act as dimensions, providing descriptive attributes and context:
  - `Dim_Students`: Contains student profiles and majors.
  - `Dim_Courses`: Contains course details and credit hours.
  - `Dim_Grades`: Contains grade letters and points.

## ETL Process (SSIS) 
* Designed and implemented data workflows using **SSIS** to extract data from raw sources.
* Applied transformations to clean, filter, and format the data in alignment with data governance standards.
* Loaded the processed data efficiently into the structured database schema for further analysis.

## Database Schema (ERD) 
This diagram shows the Star Schema used in the project, where the `Fact_Registration` table acts as the central Fact table connected to multiple Dimensions.

```mermaid
erDiagram
    Fact_Registration {
        int registration_id PK
        int student_id FK
        int course_id FK
        int grade_id FK
        float performance_score
    }
    Dim_Students {
        int student_id PK
        string student_name
        string major
    }
    Dim_Courses {
        int course_id PK
        string course_name
        int credit_hours
    }
    Dim_Grades {
        int grade_id PK
        string grade_letter
        float grade_points
    }

    Dim_Students ||--o{ Fact_Registration : "Has"
    Dim_Courses ||--o{ Fact_Registration : "Includes"
    Dim_Grades ||--o{ Fact_Registration : "Scores"



