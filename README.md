# Student Weak Subject Analysis

## Overview

This project analyzes student performance data using Python, pandas, and PostgreSQL.

Inspired by my experience as a cram school instructor, I created a synthetic dataset of 300 students to analyze weak subjects, grade-level trends, and the relationship between attendance and academic performance.

## Dataset Design

The dataset was intentionally designed to simulate realistic academic trends rather than using completely random values.

Key assumptions include:

- Grade 3 students have higher English scores due to entrance exam preparation.
- Mathematics and Science have relatively low average scores compared with the other subjects.
- Students with higher attendance tend to achieve higher average scores.
- Mathematics and Science show a positive correlation.
- English and Japanese show a strong positive correlation.
- Student performance follows a realistic distribution with a small number of high- and low-performing students.

## Skills Demonstrated

- Python data analysis
- SQL (PostgreSQL)
- Database design
- Data visualization
- Statistical analysis

## Technologies Used

- Python
- pandas
- NumPy
- matplotlib
- PostgreSQL
- pgAdmin
- JupyterLab

## Key Findings

### 1.Average Score by Grade and Subject

![Average Score by Grade and Subject](images/average_score_by_grade.png)

Grade 3 students showed relatively higher English scores compared with other grades.

### 2.Average Score by Subject

![Average Score by Subject](images/average_score_by_subject.png)

Science and Mathematics had the lowest average scores among the five subjects.

### 3.Attendance vs Average Score

![Attendance vs Average Score](images/attendance_vs_average.png)

Attendance showed a positive correlation with average score (r = 0.39).

## Analysis

### Python Analysis

- Number of students by grade
- Average scores by grade and subject
- Subject correlation analysis
- Weak subject ranking based on overall average scores
- Relationship between attendance and average score
- Attendance and average score correlation by grade
- Data visualization using bar charts and scatter plots

### SQL Analysis

- Number of students by grade
- Average score by grade
- Overall average score by subject
- Maximum and minimum score by subject
- Top 10 students by average score
- Students with average score below 60
- High attendance and high performance students
- Average attendance
- Student ranking by average score
- Correlation between attendance and average score
- Attendance and average score correlation by grade

## Project Structure

```text
student_weak_subject_analysis/
│
├── data/
│   └── student_data.csv
├── notebooks/
│   ├── 01_create_data.ipynb
│   └── 02_analysis.ipynb
├── reports/
│   ├── report.ipynb
│   └── report.md
├── sql/
│   └── analysis.sql
└── README.md
```

