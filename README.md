# 📊 CX Operations Analytics

<div align="center">

## Customer Experience Analytics & Business Intelligence Platform

End-to-end analytics project built using Python, PostgreSQL, SQL, Power BI, and Docker to analyze customer support operations, agent performance, customer satisfaction, ticket trends, and service efficiency.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

</div>

---

## 🎯 Project Overview

Customer support teams generate thousands of tickets every month across multiple issue categories such as login failures, payment issues, account access problems, subscription requests, and product bugs.

This project simulates a real-world SaaS customer support environment and builds a complete analytics workflow to:

- Track operational performance
- Monitor customer satisfaction
- Measure service efficiency
- Analyze support ticket trends
- Evaluate agent productivity
- Support data-driven decision making

The project combines data engineering, SQL analytics, KPI development, and Power BI dashboarding to transform raw support data into actionable business insights.

---

# 💼 Business Context

Support leaders need answers to questions such as:

- Which ticket categories generate the most workload?
- What percentage of tickets are escalated?
- How quickly are tickets being resolved?
- Which agents handle the highest volume?
- How does resolution time affect customer satisfaction?
- How does support performance change over time?

This analytics platform provides those insights through a structured reporting and visualization layer.

---

# 📈 Dataset Summary

| Metric | Value |
|----------|---------:|
| Customers | 5,000 |
| Support Agents | 50 |
| Support Tickets | 100,000 |
| Customer Feedback Records | 40,000 |
| Ticket Categories | 6 |
| Ticket Priorities | 4 |
| Total Records Processed | 145,000+ |

---

# 🛠 Technology Stack

| Layer | Technology |
|---------|------------|
| Programming | Python |
| Data Processing | Pandas |
| Database | PostgreSQL |
| Analytics | SQL |
| Dashboarding | Power BI |
| Infrastructure | Docker |
| Version Control | Git & GitHub |

---

# 🧠 Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Transformation
- Data Validation
- KPI Development
- Exploratory Data Analysis
- Business Intelligence Reporting

### SQL

- Aggregations
- Joins
- CTEs
- Window Functions
- Views
- Analytical Queries

### Customer Experience Analytics

- CSAT Analysis
- Escalation Analysis
- Resolution Time Analysis
- Ticket Volume Analysis
- Agent Performance Analysis
- Operational KPI Reporting

### Power BI

- Interactive Dashboards
- Executive Reporting
- Trend Analysis
- KPI Monitoring
- Performance Tracking

### Data Engineering

- ETL Pipelines
- Data Modeling
- PostgreSQL Integration
- Docker Deployment

---

# 🏗 Project Architecture

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
SQL Analytics Layer
        │
        ▼
KPI Calculations
        │
        ▼
Power BI Dashboards
        │
        ▼
Business Insights
```

---

# 📊 Power BI Dashboard Suite

## Executive Overview Dashboard

![Executive Overview](docs/screenshots/powerbi-executive-overview.png)

### Key Metrics

- Total Tickets
- Resolved Tickets
- Open Tickets
- Escalated Tickets
- Resolution Rate
- Average CSAT

### Business Value

Provides leadership teams with a high-level view of customer support operations and service health.

---

## Agent Performance Dashboard

![Agent Performance](docs/screenshots/powerbi-agent-performance.png)

### Key Metrics

- Tickets Handled per Agent
- Average Resolution Time
- Average CSAT Score

### Business Value

Enables comparison of support agent productivity, efficiency, and customer satisfaction performance.

---

## Time Trends Dashboard

![Time Trends](docs/screenshots/powerbi-time-trends.png)

### Key Metrics

- Monthly Ticket Volume
- Resolution Time Trend
- CSAT Trend
- Status Distribution Trend

### Business Value

Identifies seasonal patterns, workload fluctuations, and long-term service performance trends.

---

## Customer Insights Dashboard

![Customer Insights](docs/screenshots/powerbi-customer-insights.png)

### Key Metrics

- Ticket Category Analysis
- Escalation Analysis
- Resolution Time Analysis
- Customer Satisfaction Analysis

### Business Value

Provides visibility into customer pain points and key drivers of customer satisfaction.

---

# 📌 Core KPIs

### Resolution Rate

```sql
Resolved Tickets / Total Tickets
```

### Escalation Rate

```sql
Escalated Tickets / Total Tickets
```

### Average Resolution Time

```sql
AVG(resolution_hours)
```

### Customer Satisfaction Score

```sql
AVG(csat_score)
```

### Ticket Volume

```sql
COUNT(ticket_id)
```

---

# 🔍 Analytics Use Cases

### Operations Analytics

- Ticket Volume Tracking
- Priority Distribution
- Resolution Monitoring
- Escalation Tracking

### Customer Experience Analytics

- Customer Satisfaction Measurement
- Category-Level Performance Analysis
- Service Quality Monitoring

### Workforce Analytics

- Agent Productivity Analysis
- Workload Distribution
- Performance Benchmarking

---

# 📂 Repository Structure

```text
cx-operations-analytics/
│
├── api/
├── data/
├── docs/
│   ├── results/
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

# 🎯 Resume Description

Developed an end-to-end Customer Experience Analytics platform using Python, PostgreSQL, SQL, and Power BI. Built ETL pipelines, KPI frameworks, analytical SQL reporting layers, and interactive dashboards to analyze support operations, customer satisfaction, ticket escalations, service efficiency, and agent performance across 100,000 customer support tickets.

---

# 📚 Key Learnings

- Customer Experience Analytics
- Business Intelligence Reporting
- SQL Analytics
- Dashboard Design
- KPI Development
- Data Engineering
- PostgreSQL Database Management
- Power BI Visualization

---

# 👨‍💻 Author

**Abhishek Singh**

Computer Science Engineering (Data Science)

### Areas of Interest

- Data Analytics
- Business Intelligence
- Product Analytics
- Customer Experience Analytics
- Data Engineering

GitHub: https://github.com/absksync

---

## ⭐ Project Outcome

Transforming raw customer support data into actionable business intelligence through analytics, visualization, and KPI-driven decision making.
