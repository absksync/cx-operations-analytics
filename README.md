# 📊 CX Operations Analytics

<div align="center">

## Customer Experience Analytics Platform

### Python • PostgreSQL • SQL • Power BI • Docker

End-to-end analytics project that transforms customer support operations data into actionable business intelligence using ETL pipelines, SQL analytics, KPI development, and interactive Power BI dashboards.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

</div>

---

# 🎯 Business Problem

Customer support teams generate thousands of tickets every month across multiple categories such as login issues, payment failures, account access problems, subscription requests, and feature requests.

Without a centralized analytics layer, support leaders struggle to answer critical business questions:

- Which ticket categories generate the highest workload?
- Which issues lead to the most escalations?
- How quickly are tickets resolved?
- How satisfied are customers with support interactions?
- Which agents perform most efficiently?
- How does customer satisfaction change over time?

This project builds a complete analytics workflow to answer these questions through data engineering, SQL analytics, KPI reporting, and Power BI dashboards.

---

# 💼 Recruiter Snapshot

| Category | Details |
|-----------|----------|
| Domain | Customer Experience Analytics |
| Industry | SaaS Support Operations |
| Dataset | 100,000 Support Tickets |
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

# 🛠 Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Transformation
- Data Validation
- Exploratory Data Analysis
- KPI Development
- Business Intelligence

### SQL

- Joins
- Aggregations
- Views
- Window Functions
- KPI Reporting
- Operational Analytics

### Customer Experience Analytics

- Customer Satisfaction Analysis (CSAT)
- Resolution Time Analysis
- Escalation Analysis
- Ticket Category Analysis
- Agent Performance Analytics
- Support Operations Reporting

### Power BI

- Interactive Dashboards
- KPI Monitoring
- Executive Reporting
- Trend Analysis
- Business Intelligence Visualization

### Data Engineering

- Python
- Pandas
- PostgreSQL
- Docker
- Git
- GitHub

---

# 🏗 Architecture

```text
Raw Ticket Data
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
KPIs & Business Metrics
       │
       ▼
Power BI Dashboards
       │
       ▼
Business Insights
```

---

# 📦 Dataset Overview

| Entity | Records |
|----------|---------:|
| Customers | 5,000 |
| Agents | 50 |
| Tickets | 100,000 |
| Feedback Records | 40,000 |
| Total Records | 145,000+ |

---

# 📊 Power BI Dashboard Suite

The project includes four interactive business intelligence dashboards designed for support leaders, operations managers, and customer experience teams.

---

## 1️⃣ Executive Overview Dashboard

<img src="docs/screenshots/powerbi-executive-overview.png" width="100%">

### KPIs

- Total Tickets
- Resolved Tickets
- Open Tickets
- Escalated Tickets
- Resolution Rate
- Average CSAT

### Insights

- Monthly Ticket Volume
- Category Distribution
- Priority Distribution
- Ticket Status Overview
- Service Health Monitoring

### Business Impact

Provides leadership teams with a high-level operational view of support performance and customer experience.

---

## 2️⃣ Agent Performance Dashboard

<img src="docs/screenshots/powerbi-agent-performance.png" width="100%">

### KPIs

- Tickets Handled Per Agent
- Average Resolution Time
- Average CSAT Score

### Insights

- Agent Workload Distribution
- Resolution Efficiency
- Customer Satisfaction Comparison
- Resolution Time vs CSAT Analysis

### Business Impact

Helps managers identify top-performing agents and operational bottlenecks.

---

## 3️⃣ Time Trends Dashboard

<img src="docs/screenshots/powerbi-time-trends.png" width="100%">

### KPIs

- Monthly Ticket Volume
- Resolution Time Trend
- Customer Satisfaction Trend

### Insights

- Ticket Growth Patterns
- Seasonal Demand Changes
- Category Trends
- Status Trends

### Business Impact

Supports capacity planning and long-term service improvement initiatives.

---

## 4️⃣ Customer Insights Dashboard

<img src="docs/screenshots/powerbi-customer-insights.png" width="100%">

### KPIs

- Category-Level CSAT
- Escalation Analysis
- Resolution Time Analysis

### Insights

- Customer Satisfaction Distribution
- Escalation Drivers
- Category Contribution Analysis
- Resolution Time vs Satisfaction Correlation

### Business Impact

Provides visibility into customer experience drivers and support quality metrics.

---

# 📈 Core KPIs

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
Resolution Timestamp - Created Timestamp
```

### Average CSAT

```sql
AVG(csat_score)
```

### Ticket Volume

```sql
COUNT(ticket_id)
```

---

# 🔍 Business Questions Answered

### Operations Analytics

- Which ticket categories generate the highest workload?
- Which categories create the most escalations?
- What is the current ticket resolution rate?
- How are tickets distributed across priorities?

### Customer Experience Analytics

- What is the overall customer satisfaction score?
- Which categories have the highest customer satisfaction?
- How does resolution time impact customer satisfaction?

### Agent Performance Analytics

- Which agents handle the highest volume of tickets?
- Which agents maintain the best CSAT scores?
- How does agent performance vary across metrics?

---

# 🧮 SQL Analytics Layer

The SQL analytics layer includes reporting for:

- Ticket Volume Analysis
- Category Analysis
- Escalation Analysis
- Resolution Rate Analysis
- Priority Analysis
- CSAT Reporting
- Agent Performance Analysis
- Monthly Trends
- Resolution Time Analysis
- Operational KPI Reporting

---

# 🛠 Technology Stack

| Layer | Technology |
|---------|------------|
| Data Generation | Python |
| ETL | Pandas |
| Database | PostgreSQL |
| Analytics | SQL |
| Visualization | Power BI |
| Infrastructure | Docker |
| Version Control | Git & GitHub |

---

# 📂 Repository Structure

```text
cx-operations-analytics
│
├── api/
├── data/
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

# 🎤 Resume Project Description

Built an end-to-end Customer Experience Analytics platform using Python, PostgreSQL, SQL, and Power BI. Developed ETL pipelines, analytical SQL reporting layers, KPI frameworks, and interactive dashboards to analyze support operations, customer satisfaction, ticket escalations, agent performance, and service efficiency across 100,000 support tickets.

---

# 🎓 Key Learning Outcomes

- Data Engineering Fundamentals
- Relational Database Design
- SQL Analytics
- KPI Development
- Business Intelligence Reporting
- Customer Experience Analytics
- Dashboard Design
- End-to-End Analytics Workflows

---

# 👨‍💻 Author

### Abhishek Singh

Computer Science Engineering (Data Science)

Areas of Interest:

- Data Analytics
- Business Intelligence
- Product Analytics
- Customer Experience Analytics
- Data Engineering

GitHub: https://github.com/absksync

---

# ⭐ Project Outcome

```text
Support Data
    ↓
ETL Pipeline
    ↓
PostgreSQL
    ↓
SQL Analytics
    ↓
Power BI Dashboards
    ↓
Business Insights
```

Transforming customer support data into actionable business intelligence through analytics, visualization, and KPI-driven decision making.
