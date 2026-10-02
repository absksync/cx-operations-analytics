SELECT
    t.ticket_id,
    t.ticket_category,
    t.priority,
    t.status,

    t.sla_hours,
    t.is_escalated,

    t.created_at,
    t.first_response_at,
    t.resolved_at,

    a.agent_name,
    a.team_name,

    c.customer_name,

    f.csat_score,

    EXTRACT(
        EPOCH FROM (
            t.first_response_at - t.created_at
        )
    ) / 3600 AS first_response_hours,

    EXTRACT(
        EPOCH FROM (
            t.resolved_at - t.created_at
        )
    ) / 3600 AS resolution_hours,

    CASE
        WHEN t.resolved_at IS NOT NULL
        AND EXTRACT(
            EPOCH FROM (
                t.resolved_at - t.created_at
            )
        ) / 3600 <= t.sla_hours
        THEN 1
        ELSE 0
    END AS sla_met

FROM support_tickets t

LEFT JOIN agents a
ON t.agent_id = a.agent_id

LEFT JOIN customers c
ON t.customer_id = c.customer_id

LEFT JOIN customer_feedback f
ON t.ticket_id = f.ticket_id;