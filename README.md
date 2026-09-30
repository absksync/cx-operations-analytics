# CX Operations Analytics

An end-to-end Customer Experience Analytics platform that simulates enterprise customer support operations using PostgreSQL, Python ETL, SQL analytics, and Tableau.

---

## Dashboard Preview

![CX Dashboard](docs/screenshots/dashboard-overview.png)

---

## Tech Stack

- PostgreSQL
- SQL
- Python
- Pandas
- SQLAlchemy
- Docker
- Tableau

---

## Project Architecture

Raw Data Generation
↓
Python ETL Pipeline
↓
PostgreSQL Data Warehouse
↓
SQL KPI Analytics
↓
Tableau Dashboard

---

## Analytics Covered

### Customer Support KPIs

- Ticket Volume by Category
- Ticket Distribution by Priority
- Ticket Status Analysis
- Average Customer Satisfaction Score (CSAT)
- Resolution Time by Priority
- Agent Productivity Metrics
- Monthly Ticket Trends
- First Response Time Analysis

---

## Dataset Scale

- 5,000 Customers
- 50 Support Agents
- 100,000 Support Tickets
- 40,000 Customer Feedback Records

Total Records Processed: 145,000+

---

## Key Features

- Dockerized PostgreSQL environment
- Relational database schema design
- Synthetic customer support data generation
- Automated ETL pipeline
- KPI reporting with SQL
- Interactive Tableau dashboard
- Git feature-branch workflow

---

## Repository Structure

```text
cx-operations-analytics/
│
├── data/
├── docs/
├── etl/
├── powerbi/
├── sql/
├── docker-compose.yml
└── README.md
```
