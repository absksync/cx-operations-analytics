-- ============================================
-- SLA Compliance Rate
-- ============================================

SELECT
ROUND(
    100.0 * COUNT(*) FILTER (
        WHERE EXTRACT(EPOCH FROM (resolved_at - created_at))/3600 <= sla_hours
    ) / NULLIF(COUNT(*),0),
    2
) AS sla_compliance_pct
FROM support_tickets
WHERE status = 'Resolved';



-- ============================================
-- Escalation Rate
-- ============================================

SELECT
ROUND(
    100.0 * COUNT(*) FILTER (
        WHERE is_escalated = TRUE
    ) / NULLIF(COUNT(*),0),
    2
) AS escalation_rate_pct
FROM support_tickets;



-- ============================================
-- Average Resolution Time By Priority
-- ============================================

SELECT
priority,
ROUND(
    AVG(EXTRACT(EPOCH FROM (resolved_at - created_at))/3600),
    2
) AS avg_resolution_hours
FROM support_tickets
WHERE resolved_at IS NOT NULL
GROUP BY priority
ORDER BY avg_resolution_hours DESC;



-- ============================================
-- Average First Response Time By Priority
-- ============================================

SELECT
priority,
ROUND(
    AVG(EXTRACT(EPOCH FROM (first_response_at - created_at))/3600),
    2
) AS avg_first_response_hours
FROM support_tickets
WHERE first_response_at IS NOT NULL
GROUP BY priority
ORDER BY avg_first_response_hours DESC;



-- ============================================
-- Agent Productivity
-- ============================================

SELECT
a.agent_name,
COUNT(st.ticket_id) AS resolved_tickets
FROM agents a
JOIN support_tickets st
ON a.agent_id = st.agent_id
WHERE st.status = 'Resolved'
GROUP BY a.agent_name
ORDER BY resolved_tickets DESC;



-- ============================================
-- Team Performance
-- ============================================

SELECT
a.team_name,
COUNT(st.ticket_id) AS resolved_tickets,
ROUND(
    AVG(EXTRACT(EPOCH FROM (st.resolved_at - st.created_at))/3600),
    2
) AS avg_resolution_hours
FROM agents a
JOIN support_tickets st
ON a.agent_id = st.agent_id
WHERE st.status = 'Resolved'
GROUP BY a.team_name
ORDER BY resolved_tickets DESC;



-- ============================================
-- Monthly Ticket Trend
-- ============================================

SELECT
DATE_TRUNC('month', created_at) AS month,
COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY month
ORDER BY month;



-- ============================================
-- Backlog Trend
-- ============================================

SELECT
DATE(created_at) AS day,
COUNT(*) FILTER (
    WHERE status <> 'Resolved'
) AS open_tickets
FROM support_tickets
GROUP BY day
ORDER BY day;