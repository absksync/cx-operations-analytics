CREATE OR REPLACE VIEW ticket_resolution_metrics AS
SELECT
    ticket_id,
    priority,
    status,

    EXTRACT(
        EPOCH FROM (
            first_response_at - created_at
        )
    ) / 3600 AS first_response_hours,

    EXTRACT(
        EPOCH FROM (
            resolved_at - created_at
        )
    ) / 3600 AS resolution_hours

FROM support_tickets;