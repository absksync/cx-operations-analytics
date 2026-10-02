# 📊 CX Operations Analytics

<div align="center">

### Customer Experience • Support Operations • Business Intelligence

**Python ETL → PostgreSQL → SQL Analytics → Power BI**

A production-style analytics project that transforms customer support operations data into actionable business intelligence through ETL pipelines, KPI development, SQL analytics, and interactive Power BI dashboards.

<br>

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-ETL-150458?style=for-the-badge&logo=pandas&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?style=for-the-badge&logo=docker&logoColor=white)

</div>

---

## 🎯 Project Overview

Customer support teams generate large amounts of operational data every day, but raw ticket records alone do not provide actionable insights.

This project simulates a real-world SaaS customer support environment and builds a complete analytics workflow that transforms support ticket data into meaningful business intelligence.

The platform combines:

- Python ETL Pipelines
- PostgreSQL Database Design
- SQL Analytics
- KPI Development
- Power BI Dashboards
- Customer Experience Analytics

The goal is to help support teams understand service performance, customer satisfaction, ticket demand, escalations, and agent workload through data-driven decision making.

---

## 💼 Recruiter Snapshot

| Area | Details |
|--------|---------|
| Domain | Customer Experience Analytics |
| Industry | SaaS Customer Support |
| Dataset Size | 100,000 Tickets |
| Customers | 5,000 |
| Agents | 50 |
| Feedback Records | 40,000 |
| ETL | Python + Pandas |
| Database | PostgreSQL |
| Analytics | SQL |
| Visualization | Power BI |
| Infrastructure | Docker |
| Version Control | Git & GitHub |

---

## 🛠 Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Transformation
- Data Modeling
- Exploratory Data Analysis
- KPI Development
- Business Intelligence

### SQL

- Joins
- Aggregations
- Views
- KPI Queries
- Analytical Reporting
- Performance Analysis

### Customer Experience Analytics

- Customer Satisfaction (CSAT)
- Escalation Analysis
- Resolution Time Analysis
- First Response Time Analysis
- Agent Performance Analysis
- Support Operations Analytics

### Power BI

- Dashboard Design
- Interactive Reporting
- KPI Monitoring
- Business Reporting
- Trend Analysis
- Data Visualization

### Engineering

- Python
- Pandas
- PostgreSQL
- Docker
- Git
- GitHub

---

## 🚀 Business Problem

Support organizations often struggle to answer questions such as:

- Which ticket categories generate the highest workload?
- Which issues lead to the most escalations?
- How quickly are customers receiving support?
- How efficiently are tickets being resolved?
- How is workload distributed across agents?
- How does customer satisfaction change over time?

This project provides an analytical framework to answer these questions through SQL analytics and Power BI reporting.

---

## 🏗 Architecture

```text
Raw Support Data
        │
        ▼
Python ETL Pipeline
        │
        ▼
PostgreSQL Database
        │
        ▼
SQL Views & KPI Layer
        │
        ▼
Analytics Dataset
        │
        ▼
Power BI Dashboards
```

---

## 📦 Dataset Overview

| Entity | Records |
|----------|---------:|
| Customers | 5,000 |
| Support Agents | 50 |
| Support Tickets | 100,000 |
| Customer Feedback | 40,000 |
| Total Records | 145,000+ |

> All records are synthetic and created for analytics and portfolio purposes.

---

# 📊 Power BI Dashboard Suite

The reporting layer consists of four business-focused dashboards.

---

## 1️⃣ Executive Overview

![Executive Overview](docs/screenshots/powerbi-executive-overview.png)

### KPIs

- Total Tickets
- Open Tickets
- Resolved Tickets
- Escalated Tickets
- Resolution Rate
- Average CSAT

### Insights

- Ticket Volume by Month
- Ticket Status Distribution
- Ticket Category Analysis
- Priority Distribution
- Service Health Overview

### Business Value

Provides leadership teams with an overall view of support operations and service performance.

---

## 2️⃣ Agent Performance Dashboard

![Agent Performance](docs/screenshots/powerbi-agent-performance.png)

### KPIs

- Tickets Handled per Agent
- Average Resolution Hours
- Average CSAT per Agent

### Insights

- Workload Distribution
- Resolution Efficiency
- Agent Performance Comparison
- Resolution Time vs CSAT Analysis

### Business Value

Helps identify operational efficiency patterns across support teams.

---

## 3️⃣ Time Trends Dashboard

![Time Trends](docs/screenshots/powerbi-time-trends.png)

### KPIs

- Monthly Ticket Volume
- Resolution Time Trend
- Monthly CSAT Trend

### Insights

- Ticket Demand Changes
- Service Performance Trends
- Category Trends
- Status Trends

### Business Value

Allows teams to monitor operational changes and long-term trends.

---

## 4️⃣ Customer Insights Dashboard

![Customer Insights](docs/screenshots/powerbi-customer-insights.png)

### KPIs

- Category-Level CSAT
- Escalation Analysis
- Resolution Time Analysis

### Insights

- Customer Satisfaction Distribution
- Category Contribution
- Resolution Time vs CSAT
- Escalation Breakdown

### Business Value

Provides visibility into customer experience drivers and support quality indicators.

---

## 📈 Core KPIs

### Resolution Rate

```text
Resolved Tickets / Total Tickets
```

### Escalation Rate

```text
Escalated Tickets / Total Tickets
```

### First Response Time

```text
First Response Timestamp - Ticket Creation Timestamp
```

### Resolution Time

```text
Resolution Timestamp - Ticket Creation Timestamp
```

### Customer Satisfaction (CSAT)

```text
Average Customer Satisfaction Score
```

---

## 🔍 Business Questions Answered

### Operations

- Which ticket categories generate the highest demand?
- Which categories create the most escalations?
- How is workload distributed across support agents?

### Customer Experience

- Which categories receive the highest CSAT?
- Does longer resolution time affect customer satisfaction?

### Service Performance

- How has ticket volume changed over time?
- What is the average resolution time?
- What percentage of tickets are successfully resolved?

---

## 🧮 SQL Analytics Layer

The analytical SQL layer includes KPI queries for:

- Ticket Volume Analysis
- Category Analysis
- Priority Analysis
- Resolution Rate Analysis
- Escalation Analysis
- CSAT Analysis
- Agent Performance Analysis
- Monthly Trend Analysis
- Resolution Time Analysis
- Service Operations Reporting

---

## 🛠 Technology Stack

| Layer | Technology |
|---------|-----------|
| Data Generation | Python |
| Data Processing | Pandas |
| Database | PostgreSQL 16 |
| Query Layer | SQL |
| Analytics | SQL Views |
| Business Intelligence | Power BI |
| Infrastructure | Docker |
| Version Control | Git & GitHub |

---

## 📁 Repository Structure

```text
cx-operations-analytics
│
├── api/
├── data/
│   ├── raw/
│   └── processed/
│
├── docs/
│   └── screenshots/
│       ├── powerbi-executive-overview.png
│       ├── powerbi-agent-performance.png
│       ├── powerbi-time-trends.png
│       └── powerbi-customer-insights.png
│
├── etl/
├── powerbi/
├── sql/
├── docker-compose.yml
└── README.md
```

---

## 🎤 Resume Description

**Built an end-to-end Customer Experience Analytics platform using Python, PostgreSQL, SQL, and Power BI. Developed ETL pipelines for support operations data, designed analytical SQL views and KPI layers, and created interactive dashboards covering ticket operations, customer satisfaction, escalation analysis, resolution efficiency, and agent performance.**

---

## 🎓 Learning Outcomes

This project demonstrates practical experience with:

- Data Engineering Fundamentals
- Relational Database Design
- SQL Analytics
- Business Intelligence Reporting
- Customer Experience Analytics
- KPI Development
- Dashboard Design
- End-to-End Analytics Workflows

---

## 👨‍💻 Author

### Abhishek Singh

Computer Science Engineering (Data Science)

Interested in:

- Data Analytics
- Business Intelligence
- Customer Experience Analytics
- Product Analytics
- Data Engineering

GitHub: https://github.com/absksync

---

## ⭐ Project Outcome

```text
Raw Data
   ↓
ETL Pipeline
   ↓
PostgreSQL
   ↓
SQL Analytics
   ↓
KPIs
   ↓
Power BI Dashboards
   ↓
Business Insights
```

**Turning customer support operations data into actionable business intelligence through analytics and visualization.**
