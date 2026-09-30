-- =====================================================
-- KPI 1: Ticket Volume by Category
-- =====================================================

SELECT
    ticket_category,
    COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY ticket_category
ORDER BY total_tickets DESC;


-- =====================================================
-- KPI 2: Ticket Status Distribution
-- =====================================================

SELECT
    status,
    COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY status
ORDER BY total_tickets DESC;


-- =====================================================
-- KPI 3: Agent Productivity (Top 10 Agents)
-- =====================================================

SELECT
    a.agent_name,
    COUNT(t.ticket_id) AS tickets_handled
FROM agents a
JOIN support_tickets t
ON a.agent_id = t.agent_id
GROUP BY a.agent_name
ORDER BY tickets_handled DESC
LIMIT 10;


-- =====================================================
-- KPI 4: Average CSAT by Ticket Category
-- =====================================================

SELECT
    t.ticket_category,
    ROUND(
        AVG(f.csat_score)::numeric,
        2
    ) AS avg_csat
FROM support_tickets t
JOIN customer_feedback f
ON t.ticket_id = f.ticket_id
GROUP BY t.ticket_category
ORDER BY avg_csat DESC;


-- =====================================================
-- KPI 5: Monthly Ticket Trend
-- =====================================================

SELECT
    DATE_TRUNC('month', created_at) AS month,
    COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY month
ORDER BY month;


-- =====================================================
-- KPI 6: Average Resolution Time by Priority
-- =====================================================

SELECT
    priority,
    ROUND(
        AVG(
            EXTRACT(
                EPOCH FROM (
                    resolved_at - created_at
                )
            ) / 3600
        )::numeric,
        2
    ) AS avg_resolution_hours
FROM support_tickets
GROUP BY priority
ORDER BY avg_resolution_hours DESC;


-- =====================================================
-- KPI 7: Average First Response Time by Priority
-- =====================================================

SELECT
    priority,
    ROUND(
        AVG(
            EXTRACT(
                EPOCH FROM (
                    first_response_at - created_at
                )
            ) / 3600
        )::numeric,
        2
    ) AS avg_first_response_hours
FROM support_tickets
GROUP BY priority
ORDER BY avg_first_response_hours DESC;


-- =====================================================
-- KPI 8: Tickets Handled per Agent
-- =====================================================

SELECT
    a.agent_name,
    COUNT(t.ticket_id) AS total_tickets
FROM agents a
JOIN support_tickets t
ON a.agent_id = t.agent_id
GROUP BY a.agent_name
ORDER BY total_tickets DESC;


-- =====================================================
-- KPI 9: Open vs Closed Ticket Rate
-- =====================================================

SELECT
    status,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM support_tickets),
        2
    ) AS percentage
FROM support_tickets
GROUP BY status
ORDER BY percentage DESC;


-- =====================================================
-- KPI 10: Resolution Time by Category
-- =====================================================

SELECT
    ticket_category,
    ROUND(
        AVG(
            EXTRACT(
                EPOCH FROM (
                    resolved_at - created_at
                )
            ) / 3600
        )::numeric,
        2
    ) AS avg_resolution_hours
FROM support_tickets
GROUP BY ticket_category
ORDER BY avg_resolution_hours DESC;