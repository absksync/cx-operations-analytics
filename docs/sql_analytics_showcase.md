# Advanced SQL Analytics Showcase

## Top Performing Agents

```sql
SELECT
    agent_id,
    COUNT(*) AS tickets_handled,
    AVG(csat_score) AS avg_csat,
    RANK() OVER (
        ORDER BY AVG(csat_score) DESC
    ) AS performance_rank
FROM ticket_feedback_view
GROUP BY agent_id;
```

---

## Monthly Ticket Trends

```sql
SELECT
    DATE_TRUNC('month', created_at) AS month,
    COUNT(*) AS ticket_volume,
    LAG(COUNT(*)) OVER (
        ORDER BY DATE_TRUNC('month', created_at)
    ) AS previous_month_volume
FROM tickets
GROUP BY month;
```

---

## Resolution Time Analysis

```sql
SELECT
    category,
    AVG(resolution_hours) AS avg_resolution_hours
FROM tickets
GROUP BY category
ORDER BY avg_resolution_hours DESC;
```

---

## Escalation Analysis

```sql
SELECT
    category,
    COUNT(*) AS escalated_tickets
FROM tickets
WHERE escalated = TRUE
GROUP BY category;
```