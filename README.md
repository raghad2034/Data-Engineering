## Database Schema (ERD) 📊
This diagram illustrates the Star Schema used in the project, where the `Registration` table acts as the central Fact table.

```mermaid
erDiagram
    Fact_Registration {
        int registration_id PK
        int student_id FK
        int course_id FK
        int date_id FK
        float final_grade
    }
    Dim_Student {
        int student_id PK
        string full_name
        string major
    }
    Dim_Course {
        int course_id PK
        string course_name
        int credit_hours
    }
    Dim_Date {
        int date_id PK
        date registration_date
        string semester
    }

    Dim_Student ||--o{ Fact_Registration : "Has"
    Dim_Course ||--o{ Fact_Registration : "Includes"
    Dim_Date ||--o{ Fact_Registration : "Occurs"
