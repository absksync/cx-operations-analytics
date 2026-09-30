from faker import Faker
import pandas as pd
import numpy as np
from datetime import datetime, timedelta
import random
from pathlib import Path

fake = Faker()

BASE_DIR = Path(__file__).resolve().parents[2]
RAW_DIR = BASE_DIR / "data" / "raw"

RAW_DIR.mkdir(parents=True, exist_ok=True)

NUM_CUSTOMERS = 5000
NUM_AGENTS = 50
NUM_TICKETS = 100000

ticket_categories = [
    "Login Issue",
    "Payment Failure",
    "Subscription",
    "Bug Report",
    "Feature Request",
    "Account Access"
]

priorities = [
    "Low",
    "Medium",
    "High",
    "Critical"
]

statuses = [
    "Resolved",
    "Closed",
    "Escalated",
    "Open"
]

teams = [
    "Technical Support",
    "Billing",
    "Account Management",
    "Customer Success"
]

customers = []

for customer_id in range(1, NUM_CUSTOMERS + 1):
    customers.append(
        {
            "customer_id": customer_id,
            "customer_name": fake.name(),
            "email": fake.unique.email()
        }
    )

customers_df = pd.DataFrame(customers)

agents = []

for agent_id in range(1, NUM_AGENTS + 1):
    agents.append(
        {
            "agent_id": agent_id,
            "agent_name": fake.name(),
            "team_name": random.choice(teams)
        }
    )

agents_df = pd.DataFrame(agents)

tickets = []

start_date = datetime(2025, 1, 1)

for ticket_id in range(1, NUM_TICKETS + 1):

    created_at = start_date + timedelta(
        minutes=random.randint(0, 525600)
    )

    first_response_at = created_at + timedelta(
        minutes=random.randint(5, 720)
    )

    resolved_at = first_response_at + timedelta(
        hours=random.randint(1, 168)
    )

    tickets.append(
        {
            "ticket_id": ticket_id,
            "customer_id": random.randint(1, NUM_CUSTOMERS),
            "agent_id": random.randint(1, NUM_AGENTS),
            "ticket_category": random.choice(ticket_categories),
            "priority": random.choice(priorities),
            "status": random.choice(statuses),
            "created_at": created_at,
            "first_response_at": first_response_at,
            "resolved_at": resolved_at
        }
    )

tickets_df = pd.DataFrame(tickets)

feedback = []

feedback_ticket_ids = random.sample(
    range(1, NUM_TICKETS + 1),
    40000
)

for ticket_id in feedback_ticket_ids:

    feedback.append(
        {
            "ticket_id": ticket_id,
            "csat_score": random.randint(1, 5),
            "feedback_comment": fake.sentence()
        }
    )

feedback_df = pd.DataFrame(feedback)

customers_df.to_csv(
    RAW_DIR / "customers.csv",
    index=False
)

agents_df.to_csv(
    RAW_DIR / "agents.csv",
    index=False
)

tickets_df.to_csv(
    RAW_DIR / "support_tickets.csv",
    index=False
)

feedback_df.to_csv(
    RAW_DIR / "customer_feedback.csv",
    index=False
)

print("Data generation complete.")
print(f"Customers: {len(customers_df)}")
print(f"Agents: {len(agents_df)}")
print(f"Tickets: {len(tickets_df)}")
print(f"Feedback: {len(feedback_df)}")