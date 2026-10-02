# Entity Relationship Diagram

```text
CUSTOMERS
│
├── customer_id (PK)
│
│ 1:M
▼

TICKETS
│
├── ticket_id (PK)
├── customer_id (FK)
├── agent_id (FK)
│
│ M:1
▼

AGENTS
│
├── agent_id (PK)

TICKETS
│
│ 1:1
▼

FEEDBACK
│
├── feedback_id (PK)
├── ticket_id (FK)
├── csat_score
```