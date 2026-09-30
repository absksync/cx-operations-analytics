CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE agents (
    agent_id SERIAL PRIMARY KEY,
    agent_name VARCHAR(100) NOT NULL,
    team_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE support_tickets (
    ticket_id SERIAL PRIMARY KEY,

    customer_id INT NOT NULL REFERENCES customers(customer_id),
    agent_id INT REFERENCES agents(agent_id),

    ticket_category VARCHAR(100),
    priority VARCHAR(20),

    status VARCHAR(20),

    sla_hours INT,

    is_escalated BOOLEAN,

    created_at TIMESTAMP NOT NULL,
    first_response_at TIMESTAMP,
    resolved_at TIMESTAMP
);

CREATE TABLE customer_feedback (
    feedback_id SERIAL PRIMARY KEY,

    ticket_id INT NOT NULL REFERENCES support_tickets(ticket_id),

    csat_score INT CHECK (csat_score BETWEEN 1 AND 5),

    feedback_comment TEXT,

    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);