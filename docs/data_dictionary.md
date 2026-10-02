# Data Dictionary

## Customers

| Column | Type | Description |
|----------|----------|----------|
| customer_id | INTEGER | Unique customer identifier |
| customer_name | VARCHAR | Customer name |
| signup_date | DATE | Customer registration date |

---

## Agents

| Column | Type | Description |
|----------|----------|----------|
| agent_id | INTEGER | Unique agent identifier |
| agent_name | VARCHAR | Agent name |
| team | VARCHAR | Support team |

---

## Tickets

| Column | Type | Description |
|----------|----------|----------|
| ticket_id | INTEGER | Unique ticket identifier |
| customer_id | INTEGER | Customer reference |
| agent_id | INTEGER | Assigned agent |
| category | VARCHAR | Ticket category |
| priority | VARCHAR | Ticket priority |
| status | VARCHAR | Ticket status |
| created_at | TIMESTAMP | Ticket creation timestamp |
| resolved_at | TIMESTAMP | Resolution timestamp |
| resolution_hours | NUMERIC | Time to resolution |

---

## Feedback

| Column | Type | Description |
|----------|----------|----------|
| feedback_id | INTEGER | Feedback identifier |
| ticket_id | INTEGER | Related ticket |
| csat_score | INTEGER | Customer satisfaction score |
| feedback_date | DATE | Feedback submission date |